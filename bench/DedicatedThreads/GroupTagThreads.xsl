<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:t="turboxsl">
<xsl:include href="HeavyTemplate.xsl"/>
<xsl:template match="/xportal_rmd">
	<out>
		<xsl:apply-templates t:fork="yes"/>
	</out>
</xsl:template>
	<xsl:template match="art">
		<xsl:call-template name="heavy"/>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="arts_group">
		<xsl:apply-templates t:fork="deny"/>
	</xsl:template>
</xsl:stylesheet>
