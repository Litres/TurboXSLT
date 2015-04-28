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
tctx_CreateThreadPool(self,size)
  TRANSFORM_CONTEXT *self
  unsigned int size
CODE:
  XSLTCreateThreadPool(self,size);

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
