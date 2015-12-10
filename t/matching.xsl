<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/root"><div>f=<xsl:value-of select="a/@b"/></div></xsl:template>
<xsl:template match="root"><li>x=<xsl:value-of select="a/@b"/></li></xsl:template>
</xsl:stylesheet>
