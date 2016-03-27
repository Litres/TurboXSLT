<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/xportal_rmd">
		<xsl:call-template name="test"/>
	</xsl:template>
	
	<xsl:template name="test">
	<xsl:variable name="path" select="/xportal_rmd/page_data/biblio_book/art"/>
	<xsl:variable name="p1" select="$path/@param1"/>
	<xsl:variable name="p2" select="$path/@param2"/>
	<xsl:variable name="p3" select="$path/@param3"/>
	
		<xsl:value-of select="$p1+$p2*$p3"/><br />
		<xsl:value-of select="$p2*$p3+$p1"/>
	</xsl:template>

</xsl:stylesheet>
