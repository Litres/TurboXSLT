<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="fo ltr chk" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR" xmlns:chk="LTR:chk">
<xsl:output encoding="UTF-8" indent="no" method="html" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML+RDFa 1.0//EN" doctype-system="http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd"/>
	
<xsl:template match="/xportal_rmd">
	<xsl:value-of select="art/@s_name"/><br/>
	<xsl:value-of select="ltr:str_escape(art/@s_name,'url')"/><br/>
	<xsl:value-of select="ltr:str_escape(ltr:str_escape(art/@s_name,'url'),'url')"/><br/>
	<xsl:value-of select="ltr:str_escape(art/@s_author_name,'url')"/><br/>
	<xsl:value-of select="art"/><br/>
	<xsl:value-of select="ltr:str_escape(art,'url')"/><br/>
	<xsl:value-of select="art/text_html_annotation/xml_hidden/p[1]"/><br/>
	<xsl:value-of select="ltr:str_escape(art/text_html_annotation/xml_hidden/p[1],'url')"/>
</xsl:template>

</xsl:stylesheet>