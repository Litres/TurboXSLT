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

char *
xslt__output_str(gctx,doc)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
  CODE:
  RETVAL = XMLOutput(gctx,doc);
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


MODULE = TurboXSLT   PACKAGE = TRANSFORM_CONTEXTPtr   PREFIX = tctx_

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

char *
tctx_Output(gctx,doc)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
  CODE:
  RETVAL = XMLOutput(gctx,doc);
  OUTPUT:
  RETVAL

void
tctx_OutputFile(gctx,doc,filename)
  TRANSFORM_CONTEXT *gctx
  XMLNODE *doc
  char *filename
  CODE:
  XMLOutputFile(gctx,doc,filename);

MODULE = TurboXSLT   PACKAGE = XMLNODEPtr   PREFIX = node_

void
node_DESTROY(node)
  XMLNODE *node
  CODE:
  XMLFreeDocument(node);
