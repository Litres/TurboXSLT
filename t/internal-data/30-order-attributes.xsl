<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:chk="LTR:chk" xmlns:ltr="LTR" exclude-result-prefixes="ltr chk" xmlns:exsl="http://exslt.org/common" extension-element-prefixes="exsl">
<xsl:template match="subgenre">
<a href="#" class="aaa"><xsl:attribute name="style">color:blue;</xsl:attribute><xsl:attribute name="id">bbb</xsl:attribute><xsl:value-of select="@sub_name"/></a><br/>
</xsl:template>
</xsl:stylesheet>
