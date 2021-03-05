<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:chk="LTR:chk" xmlns:ltr="LTR" exclude-result-prefixes="ltr chk">
  <xsl:template match="money-transfer">
    <a href="{ltr:url_code('receipt', 'mm', @id)}">
      Чек в электронном виде
    </a>
  </xsl:template>
</xsl:stylesheet>
