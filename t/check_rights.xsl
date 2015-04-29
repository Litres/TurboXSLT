<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:if test="chk:check_rights('read')">can read<br/></xsl:if>
    <xsl:if test="chk:check_rights('write')">can write</xsl:if>
    <xsl:if test="chk:check_rights('execute')">can execute</xsl:if>      
  </xsl:template>
</xsl:stylesheet>
