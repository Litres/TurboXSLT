/* $Id$ */
/*
 * This is free software, you may use it and distribute it under the same terms as
 * Perl itself.
 *
 * Copyright 2001-2009 AxKit.com Ltd.
*/

#ifdef __cplusplus
extern "C" {
#endif
#include <turboxsl/turboxsl.h>
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"
#ifdef __cplusplus
}
#endif

char *
callbackfunc(void *fun, char **args, void *interpreter)
{
  PERL_SET_CONTEXT(interpreter);
  dSP;

  int count,i;
  char *s;

  ENTER;
  SAVETMPS;
  
  PUSHMARK(SP);
  for(i=0;args[i];++i) {
    XPUSHs(sv_2mortal(newSVpv(args[i],0)));
  }
  PUTBACK;

  count = call_sv(fun,G_SCALAR|G_EVAL);

  SPAGAIN;
  s = NULL;
  if(count > 1)
    croak("callback may return only single value\n");
  if(count==1) {
    s = xml_strdup(POPp);
  }
  PUTBACK;
  FREETMPS;
  LEAVE;

  return s;
}

HV *
hash_from_attributes(char **attributes)
{
  unsigned int i;
  
  HV *hash = newHV();
  if(attributes == NULL) return hash;

  for(i = 0; attributes[i]; i += 2)
  {
    const char *key = attributes[i];
    SV *value = newSVpv(attributes[i + 1], 0);
    if (is_utf8_string(attributes[i + 1], strlen(attributes[i + 1]))) SvUTF8_on(value);
    hv_store(hash, key, strlen(key), value, 0);
  }

  return hash;
}

void
node_from_hash(XSLTGLOBALDATA *context, HV *value_hash, XMLNODE *element, HV *hash, int is_root);

void 
node_add_text(XMLNODE *element, SV* scalar)
{
  if (SvIOK(scalar))
  {
    char buffer[64];
    sprintf(buffer, "%ld", SvIVX(scalar));
    XMLAddText(element, buffer);
    return;
  }

  if (SvNOK(scalar))
  {
    char buffer[64];
    sprintf(buffer, "%f", SvNVX(scalar));
    XMLAddText(element, buffer);
    return;
  }

  if (SvPOK(scalar))
  {
    XMLAddText(element, SvPVX(scalar));
  }
}

void 
node_add_attribute(XMLNODE *element, char *key, SV* scalar)
{
  if (SvIOK(scalar))
  {
    char buffer[64];
    sprintf(buffer, "%ld", SvIVX(scalar));
    XMLAddAttribute(element, key, buffer);
    return;
  }

  if (SvNOK(scalar))
  {
    char buffer[64];
    sprintf(buffer, "%f", SvNVX(scalar));
    XMLAddAttribute(element, key, buffer);
    return;
  }

  if (SvPOK(scalar))
  {
    XMLAddAttribute(element, key, SvPVX(scalar));
  }
}

int
value_hash_add_value(HV *value_hash, void* value)
{
  char key[64];
  sprintf(key, "%p", value);
  size_t key_length = strlen(key);
  if (hv_exists(value_hash, key, key_length)) return 0;

  return hv_store(value_hash, key, key_length, newSV(0), 0) != NULL;
}

int node_is_xml_fragment(const char *key, size_t key_length)
{
  const char *prefix = "xml_";
  size_t prefix_length = strlen(prefix);
  if (key_length < prefix_length) return 0;
  return strncmp(key, prefix, prefix_length) == 0;
}

void
node_from_array(XSLTGLOBALDATA *context, HV *value_hash, XMLNODE *parent, AV *array, char *name)
{
  SSize_t i;

  SSize_t count = av_len(array) + 1;
  for (i = 0; i < count; i++)
  {
    SV** item = av_fetch(array, i, 0);
    if (item == NULL) continue;

    if (!value_hash_add_value(value_hash, *item)) continue;

    XMLNODE *element = XMLCreateElement(parent, name);
    if (!SvROK(*item))
    {
      node_add_text(element, *item);
    }
    else
    {
      SV *real_item = SvRV(*item);
      if (SvTYPE(real_item) == SVt_PVAV)
      {
        // TODO
      }
      else if (SvTYPE(real_item) == SVt_PVHV)
      {
        node_from_hash(context, value_hash, element, (HV *)real_item, 0);
      }
    }
  }
}

void
node_from_hash(XSLTGLOBALDATA *context, HV *value_hash, XMLNODE *element, HV *hash, int is_root)
{
  I32 i;

  I32 keys = hv_iterinit(hash);
  for (i = 0; i < keys; i++)
  {
    char *key = NULL;
    I32 key_length = 0;
    SV *value = hv_iternextsv(hash, &key, &key_length);

    if (!SvROK(value))
    {
      if (!value_hash_add_value(value_hash, value)) continue;

      // special case for XML fragment
      if (node_is_xml_fragment(key, key_length) && SvPOK(value))
      {
        XMLNODE *parent = XMLCreateElement(element, key);
        XMLAddChildFromString(context, parent, SvPVX(value));
      }
      else
      {
        if (is_root)
        {
          XMLNODE *node = XMLCreateElement(element, key);
          node_add_text(node, value);
        }
        else
        {
          node_add_attribute(element, key, value);
        }
      }
    }
    else
    {
      // get value from reference
      SV *real_value = SvRV(value);

      if (SvTYPE(real_value) == SVt_PVAV)
      {
        if (!value_hash_add_value(value_hash, real_value)) continue;

        node_from_array(context, value_hash, element, (AV *)real_value, key);
      }
      else if (SvTYPE(real_value) == SVt_PVHV)
      {
        XMLNODE *node = XMLCreateElement(element, key);

        if (!value_hash_add_value(value_hash, real_value)) continue;

        node_from_hash(context, value_hash, node, (HV *)real_value, 0);
      }
    }
  }
}


MODULE = TurboXSLT   PACKAGE = TurboXSLT   PREFIX = xslt_

XMLNODE *
xslt__parse_str(gctx,str)
  XSLTGLOBALDATA *gctx
  char *str
CODE:
  RETVAL = XMLParse(gctx,str);
OUTPUT:
  RETVAL

XMLNODE *
xslt__parse_file(gctx,str)
  XSLTGLOBALDATA *gctx
  char *str
CODE:
  RETVAL = XMLParseFile(gctx,str);
OUTPUT:
  RETVAL

XMLNODE *
xslt__create_xml_from_object(gctx,object_ref,name)
  XSLTGLOBALDATA *gctx
  SV *object_ref
  char *name
CODE:
  if (!SvROK(object_ref))
  {
    RETVAL = NULL;
    return;
  }

  SV *object = SvRV(object_ref); 
  if (SvTYPE(object) == SVt_PVHV)
  {
    XMLNODE *document = XMLCreateDocument();

    HV *value_hash = newHV();
    value_hash_add_value(value_hash, object);

    XMLNODE *root = XMLCreateElement(document, name);
    node_from_hash(gctx, value_hash, root, (HV *)object, 1);
    hv_undef(value_hash);

    RETVAL = document;
  }
  else
  {
    RETVAL = NULL;
  }
OUTPUT:
  RETVAL

SV *
xslt__output_str(gctx,doc)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
CODE:
  char *string = XMLOutput(gctx,doc);
  SV *value = newSVpv(string, 0);
  if (is_utf8_string(string, strlen(string))) SvUTF8_on(value);
  RETVAL = value;
OUTPUT:
  RETVAL

void
xslt__output_file(gctx,doc,filename)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
  char *filename
CODE:
  XMLOutputFile(gctx,doc,filename);

void
setvarg(gctx,name,val)
  XSLTGLOBALDATA *gctx
  char *name
  char *val
CODE:
  set_global_var(gctx,name,val);

void
xslt__register_callback(gctx,name,func)
  XSLTGLOBALDATA *gctx
  char *name
  void *func
CODE:
  register_function(gctx,name,callbackfunc,func);

void
xslt__create_thread_pool(gctx,size)
  XSLTGLOBALDATA *gctx
  unsigned int size
CODE:
  XSLTCreateThreadPool(gctx,size);

void
xslt__enable_external_cache(gctx,list)
  XSLTGLOBALDATA *gctx
  char *list
CODE:
  XSLTEnableExternalCache(gctx,list);

void
xslt__add_url_revision(gctx,url,revision)
  XSLTGLOBALDATA *gctx
  char *url
  char *revision
CODE:
  XSLTAddURLRevision(gctx,url,revision);

void
xslt__define_group_rights(gctx,library,group,actions)
  XSLTGLOBALDATA *gctx
  char *library
  char *group
  AV* actions
CODE:
  int i;
  char **action_array;
  int action_count;

  action_count = av_len(actions) + 1;
  action_array = malloc(action_count * sizeof(char *));
  for (i = 0; i < action_count; i++)
  {
    SV** action = av_fetch(actions, i, 0);
    if (action != NULL)
    {
      action_array[i] = SvPVX(*action);
    }
  }

  XSLTDefineGroupRights(gctx,library,group,action_array,action_count);
  free(action_array);


MODULE = TurboXSLT   PACKAGE = XSLTGLOBALDATAPtr   PREFIX = gctx_

PROTOTYPES: DISABLE

XSLTGLOBALDATA *
gctx_new(package)
  char *package
CODE:
  RETVAL = XSLTInit(PERL_GET_CONTEXT);
OUTPUT:
  RETVAL

void
gctx_DESTROY(gctx)
  XSLTGLOBALDATA *gctx
CODE:
  XSLTEnd(gctx);



MODULE = TurboXSLT   PACKAGE = TurboXSLT::Stylesheet   PREFIX = tctx_

PROTOTYPES: DISABLE

TRANSFORM_CONTEXT *
tctx_new(package,gctx,filename)
  char *package
  XSLTGLOBALDATA *gctx
  char *filename
CODE:
  RETVAL = XSLTNewProcessor(gctx,filename);
OUTPUT:
  RETVAL

void
tctx_DESTROY(gctx)
  TRANSFORM_CONTEXT *gctx
CODE:
  XSLTFreeProcessor(gctx);

void
tctx_SetParallelInstructions(self,instructions)
  TRANSFORM_CONTEXT *self
  AV* instructions
CODE:
  int i;
  char **instructions_array;
  int instructions_count;

  instructions_count = av_len(instructions) + 1;
  instructions_array = malloc(instructions_count * sizeof(char *));
  for (i = 0; i < instructions_count; i++)
  {
    SV** instruction = av_fetch(instructions, i, 0);
    if (instruction != NULL) instructions_array[i] = SvPVX(*instruction);
  }

  XSLTSetParallelInstructions(self,instructions_array,instructions_count);
  free(instructions_array);

void
tctx_SetCacheKeyPrefix(self,prefix)
  TRANSFORM_CONTEXT *self
  char *prefix
CODE:
  XSLTSetCacheKeyPrefix(self,prefix);

void
tctx_SetURLLocalPrefix(self,prefix)
  TRANSFORM_CONTEXT *self
  char *prefix
CODE:
  XSLTSetURLLocalPrefix(self,prefix);

void
tctx_AddURLCodeParameter(self,name,value)
  TRANSFORM_CONTEXT *self
  char *name
  char *value
CODE:
  XSLTAddURLCodeParameter(self,name,value);

void
tctx_ResetURLCodeParameters(self)
  TRANSFORM_CONTEXT *self
CODE:
  XSLTResetURLCodeParameters(self);

void
tctx_EnableTaskGraph(self,filename)
  TRANSFORM_CONTEXT *self
  char *filename
CODE:
  XSLTEnableTaskGraph(self,filename);

void
tctx_SetUserContext(self,library,groups)
  TRANSFORM_CONTEXT *self
  char *library
  AV* groups
CODE:
  int i;
  char **group_array;
  int group_count;

  group_count = av_len(groups) + 1;
  group_array = malloc(group_count * sizeof(char *));
  for (i = 0; i < group_count; i++)
  {
    SV** group = av_fetch(groups, i, 0);
    if (group != NULL)
    {
      group_array[i] = SvPVX(*group);
    }
  }

  XSLTSetUserContext(self,library,group_array,group_count);
  free(group_array);

int
tctx_SetLocalization(self,filename)
  TRANSFORM_CONTEXT *self
  char *filename
CODE:
  RETVAL = XSLTSetLocalization(self,filename);  
OUTPUT:
  RETVAL

XMLNODE *
tctx_Transform(self,document)
  TRANSFORM_CONTEXT *self
  XMLNODE *document
CODE:
  RETVAL = XSLTProcess(self,document);
OUTPUT:
  RETVAL

void
SetVariable(gctx,name,val)
  TRANSFORM_CONTEXT *gctx
  char *name
  char *val
CODE:
  set_ctx_global_var(gctx,name,val);

SV *
tctx_Output(gctx,doc)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
CODE:
  char *string = XMLOutput(gctx,doc);
  SV *value = newSVpv(string, 0);
  if (is_utf8_string(string, strlen(string))) SvUTF8_on(value);
  RETVAL = value;
OUTPUT:
  RETVAL

void
tctx_OutputFile(gctx,doc,filename)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
  char *filename
CODE:
  XMLOutputFile(gctx,doc,filename);

XMLNODE *
tctx_FindNodes(self,document,expression)
  TRANSFORM_CONTEXT *self
  XMLNODE *document
  char *expression
CODE:
  RETVAL = XMLFindNodes(self,document,expression);
OUTPUT:
  RETVAL

MODULE = TurboXSLT   PACKAGE = TurboXSLT::Node   PREFIX = node_

void
node_DESTROY(node)
  XMLNODE *node
CODE:
  XMLFreeDocument(node);

SV *
node_StringValue(self)
  XMLNODE *self
CODE:
  char *string = XMLStringValue(self);
  SV *value = newSVpv(string, 0);
  if (is_utf8_string(string, strlen(string))) SvUTF8_on(value);
  RETVAL = value;
OUTPUT:
  RETVAL

SV *
node_Attributes(self)
  XMLNODE *self
CODE:
  HV *hash = hash_from_attributes(XMLAttributes(self));
  RETVAL = newRV_noinc((SV *)hash);
OUTPUT:
  RETVAL

