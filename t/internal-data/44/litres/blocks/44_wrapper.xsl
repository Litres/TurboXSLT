<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="/xportal_rmd">
		<xsl:apply-templates select="page_data"/>
	</xsl:template>
	
	<xsl:template match="page_data">
		<xsl:call-template name="wrapper"/>
	</xsl:template>
	
	<xsl:template name="wrapper">
		<div id="wrapper">
			<xsl:call-template name="page-wrap"/>
		</div>
	</xsl:template>
	
	<xsl:template name="content">
		<xsl:apply-templates select="*"/>
	</xsl:template>
	
</xsl:stylesheet>
