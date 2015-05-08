<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="data">
		[<xsl:apply-templates/>]
	</xsl:template>
	<xsl:template name="curles">
		<xsl:param name="contents"/>
		{<xsl:copy-of select="$contents"/>}
		<xsl:value-of select="$contents"/>
	</xsl:template>
<xsl:template match="recense">
	<xsl:call-template name="curles">
		<xsl:with-param name="contents">
			 /<xsl:apply-templates select="text_recense/hidden/*"/>/
		</xsl:with-param>
	</xsl:call-template>
</xsl:template>
<xsl:template match="hidden"/>
	<xsl:template match="p">
		<p>
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	<xsl:template match="strong|b">
		<b>
			<xsl:apply-templates/>
		</b>
	</xsl:template>
</xsl:stylesheet>
