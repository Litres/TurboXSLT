<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" extension-element-prefixes="ltr">
<xsl:template match="text">text: <xsl:value-of select="ltr:__l('выйти')"/></xsl:template>
<xsl:template match="pages">pages: <xsl:value-of select="ltr:__l('страниц: {pages}', 'pages', @number)"/></xsl:template>
<xsl:template match="days">days: <xsl:value-of select="ltr:__ln('Остался {count} день','Осталось {count} дней', @left, 'count', @left)"/></xsl:template>
<xsl:template match="greetings">greetings: <xsl:value-of select="ltr:__l('Greetings, Earth Citizens!')"/></xsl:template>
</xsl:stylesheet>
