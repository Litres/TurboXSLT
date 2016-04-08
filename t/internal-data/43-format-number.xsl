<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="fo ltr chk" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR" xmlns:chk="LTR:chk">
<xsl:decimal-format name="filesize" decimal-separator="," grouping-separator=" "/>
	
<xsl:template match="/">
	<xsl:variable name="baks1"><xsl:value-of select="/xportal_rmd/art1/@price div /xportal_rmd/currency/@price"/></xsl:variable>
	<xsl:variable name="baks2"><xsl:value-of select="/xportal_rmd/art2/@price div /xportal_rmd/currency/@price"/></xsl:variable>
	
	<xsl:value-of select="format-number($baks1,'# ##0,00','filesize')"/><br/>
	<xsl:value-of select="format-number($baks1,'0,00','filesize')"/><br/>
	
	<xsl:value-of select="format-number($baks2,'# ##0,00','filesize')"/><br/>
	<xsl:value-of select="format-number($baks2,'0,00','filesize')"/><br/>
	
</xsl:template>

</xsl:stylesheet>
