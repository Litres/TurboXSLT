<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:variable name="x"><xsl:value-of select="/root/a/@b"/></xsl:variable>
<xsl:template match="/root">
	<div><xsl:value-of select="a/@b"/></div>
	<div><xsl:value-of select="$x"/></div>
</xsl:template>
</xsl:stylesheet>
