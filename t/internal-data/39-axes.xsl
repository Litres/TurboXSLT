<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR">

<xsl:template match="test">
	<xsl:call-template name="sub_test">
		<xsl:with-param name="nnode" select="sub_test[4]"/>
	</xsl:call-template>
</xsl:template>

<xsl:template name="sub_test">
	<xsl:param name="nnode"/>
	<xsl:apply-templates select="$nnode"/>
</xsl:template>

<xsl:template match="sub_test">
ancestor: <xsl:value-of select="count(ancestor::*)"/><br/>
ancestor-or-self: <xsl:value-of select="count(ancestor-or-self::*)"/><br/>
child: <xsl:value-of select="count(child::*)"/><br/>
descendant: <xsl:value-of select="count(descendant::*)"/><br/>
descendant-or-self: <xsl:value-of select="count(descendant-or-self::*)"/><br/>
following: <xsl:value-of select="count(following::*)"/><br/>
following-sibling: <xsl:value-of select="count(following-sibling::*)"/><br/>
parent: <xsl:value-of select="name(parent::*)"/><br/>
preceding: <xsl:value-of select="count(preceding::*)"/><br/>
preceding-sibling: <xsl:value-of select="count(preceding-sibling::*)"/><br/>
self: <xsl:value-of select="name(self::*)"/><br/>
<xsl:value-of select="@username"/>
</xsl:template>

</xsl:stylesheet>
