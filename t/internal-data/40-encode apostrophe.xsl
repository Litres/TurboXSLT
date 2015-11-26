<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR">
<xsl:template match="xportal_rmd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>

		pass: <xsl:value-of disable-output-escaping="yes" select="qwerty/xml_password/p/strong"/><br />
		pass: <xsl:value-of select="qwerty/xml_password/p/strong"/><br />
		pass-copy: <xsl:copy-of select="qwerty/xml_password/p/strong"/><br />
		<xsl:value-of select="qwerty/art/@name"/><br />		
		
		<xsl:apply-templates select="qwerty"/>
	</body>
</html>
</xsl:template>
<xsl:template match="qwerty">
	<div><xsl:value-of select="art/@name"/></div>
</xsl:template>

</xsl:stylesheet>

