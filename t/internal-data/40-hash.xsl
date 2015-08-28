<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ltr="LTR">
<xsl:template match="xportal_rmd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>
		user: <xsl:value-of select="qwerty/@username"/>
		pass: <xsl:value-of select="qwerty/xml_password/p/strong"/>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>

