<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="fo ltr chk" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR" xmlns:chk="LTR:chk">
<xsl:output encoding="UTF-8" indent="no" method="html" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML+RDFa 1.0//EN" doctype-system="http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd"/>
	
<xsl:template match="/">
<xsl:variable name="path" select="/xportal_rmd/art"></xsl:variable>	
	<xsl:value-of select="$path/@name"/><br />
	<xsl:value-of select="ltr:url_encode($path/@name)"/><br />
	<xsl:value-of select="ltr:url_encode(ltr:url_encode($path/@name))"/>
</xsl:template>

</xsl:stylesheet>
