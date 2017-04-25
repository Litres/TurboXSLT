<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="UTF-8" indent="no" method="html" omit-xml-declaration="yes"/>

<xsl:template match="new_genres">
	<div class="new_genres_page">
		<ul class="genres_tree">
			<xsl:apply-templates select="genre" mode="genres_tree">
				<xsl:sort select="@title" order="ascending" data-type="text"/>
			</xsl:apply-templates>
		</ul>
	</div>
</xsl:template>

<xsl:template match="genre" mode="genres_tree">
	<li class="genre">
		<span class="genre_title">
			<xsl:value-of select="@title"/>
		</span>
		<xsl:if test="subgenres">
			<ul class="subgenres_tree">
				<xsl:apply-templates select="subgenres" mode="genres_tree">
					<xsl:sort select="@title" order="ascending" data-type="text"/>
				</xsl:apply-templates>
			</ul>
		</xsl:if>
	</li>
</xsl:template>

<xsl:template match="subgenres" mode="genres_tree">
	<li class="subgenres">
		<span class="subgenre_title">
			<xsl:value-of select="@title"/>
		</span>
		<xsl:if test="subgenres">
			<ul class="sub_subgenres_tree">
				<xsl:apply-templates select="subgenres" mode="genres_tree">
					<xsl:sort select="@title" order="ascending" data-type="text"/>
				</xsl:apply-templates>
			</ul>
		</xsl:if>
	</li>
</xsl:template>

</xsl:stylesheet>