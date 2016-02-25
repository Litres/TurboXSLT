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

	<xsl:template name="page-wrap">
		<div class="page-wrap">
			<xsl:call-template name="block-wrapper">
				<xsl:with-param name="class">page clicktag</xsl:with-param>
				<xsl:with-param name="content">
					<xsl:call-template name="content"/>
				</xsl:with-param>
			</xsl:call-template>
		</div>
	</xsl:template>


	<xsl:template name="block-wrapper">
		<xsl:param name="class"/>
		<xsl:param name="id"/>
		<xsl:param name="content"/>
		<div>
			<xsl:if test="$class"><xsl:attribute name="class"><xsl:value-of select="$class"/></xsl:attribute></xsl:if>
			<xsl:if test="$id"><xsl:attribute name="id"><xsl:value-of select="$id"/></xsl:attribute></xsl:if>
			<xsl:if test="$content">
				<xsl:copy-of select="$content"/>
			</xsl:if>
		</div>
	</xsl:template>
	
	<xsl:template name="content">
		<xsl:apply-templates select="*"/>
	</xsl:template>

	<xsl:template match="art[not(@purchased or @freebie = 1)]">
		<div id="test">
			<xsl:attribute name="omg">{omg}</xsl:attribute>
			<xsl:attribute name="data-options">
					{
						show_popup: 12,
						voted: 12,
						votes:[1,2,3,4],
						mid_vote:1234,
						vote_amount:1234,
						recenses: 123
					}
			</xsl:attribute>
			[test]			
		</div>
	</xsl:template>

</xsl:stylesheet>
