<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR">
<xsl:output encoding="UTF-8" indent="no" method="xml" omit-xml-declaration="yes"/>

<xsl:template match="new_genres">
	<div class="new_genres_page">
		<h1 class="mainheader">Жанры</h1>
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
			<xsl:call-template name="genre_link_href">
				<xsl:with-param name="nnode" select="."/>
			</xsl:call-template>
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
			<xsl:call-template name="genre_link_href">
				<xsl:with-param name="nnode" select="."/>
			</xsl:call-template>
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

<xsl:template name="genre_link_href">
	<xsl:param name="nnode" select="."/>
	<xsl:param name="class"/>
	<xsl:variable name="atype" select="/xportal_rmd/request/param/@atype"/>
	<xsl:variable name="lang" select="/xportal_rmd/request/param/@lang"/>
	<a>
		<xsl:if test="$class and $class != ''"><xsl:attribute name="class"><xsl:value-of select="$class"/></xsl:attribute></xsl:if>
		<xsl:attribute name="href">
			<xsl:call-template name="make_url_var">
				<xsl:with-param name="data">genre_by_default,genre,<xsl:value-of select="$nnode/@id"/><xsl:if test="$atype">,atype,<xsl:value-of select="$atype"/></xsl:if><xsl:if test="$lang and $lang != ''">,lang,<xsl:value-of select="$lang"/></xsl:if></xsl:with-param>
			</xsl:call-template>
		</xsl:attribute>
		<xsl:call-template name="capitalize-first-letter">
			<xsl:with-param name="string" select="$nnode/@title"/>
		</xsl:call-template>
	</a>
</xsl:template>

<xsl:template name="capitalize-first-letter"><!-- строка с прописной буквы -->
	<xsl:param name="string"/>
	<xsl:value-of select="concat(translate(substring($string, 1, 1), $low-case, $up-case), substring($string, 2))"/>
</xsl:template>

<xsl:template name="make_url_var">
	<xsl:param name="data"/>
	<xsl:value-of select="ltr:url_code($data)"/>
</xsl:template>

<!-- шаблоны для работы со строками в xslt -->
<xsl:variable name="low-case">абвгдеёжзийклмнопрстуфхцчшщыъьэюяabcdefghijklmnopqrstuvwxyz</xsl:variable>
<xsl:variable name="up-case">АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЫЪЬЭЮЯABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>

<xsl:template name="uppercase"><!-- верхний регистр -->
	<xsl:param name="string"/>
	<xsl:value-of select="translate($string, $low-case, $up-case)"/>
</xsl:template>

<xsl:template name="lowercase"><!-- нижний регистр -->
	<xsl:param name="string"/>
	<xsl:value-of select="translate($string, $up-case, $low-case)"/>
</xsl:template>

</xsl:stylesheet>