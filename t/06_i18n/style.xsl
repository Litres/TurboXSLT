<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" extension-element-prefixes="ltr">
<xsl:template match="text">text: <xsl:value-of select="ltr:__l('выйти')"/></xsl:template>
<xsl:template match="pages">pages: <xsl:value-of select="ltr:__l('страниц: {pages}', 'pages', @number)"/></xsl:template>
<xsl:template match="days">days: <xsl:value-of select="ltr:__ln('Остался {count} день','Осталось {count} дней', @left, 'count', @left)"/></xsl:template>
<xsl:template match="greetings">greetings: <xsl:value-of select="ltr:__l('Greetings, Earth Citizens!')"/></xsl:template>
<xsl:template match="notranslate">notranslate: <xsl:value-of select="ltr:__l('Сервис {name}','name',@name)"/></xsl:template>
<xsl:template match="double_placeholders">double_placeholders: <xsl:value-of select="ltr:__l('Сервис {name} да и {name} еще','name',@name)"/></xsl:template>
<xsl:template match="symbols">symbols: <xsl:value-of select="ltr:__l('Сервис электронных книг &#x1F4DA; ЛитРес предлагает скачать книгу &#x1F833; {bookName}, {authors_list} в форматах fb2, txt, epub, pdf или читать онлайн! &#x27A4; Оставляйте и читайте отзывы о книге на ЛитРес!','bookName',@bookname,'authors_list',@authors_list)"/></xsl:template>
<xsl:template match="symbols2">symbols2: <xsl:value-of select="ltr:__l('Сервис электронных книг &#x1F4DA; ЛитРес предлагает скачать книгу &#x1F833; {bookName}, {authors_list} в epub или читать онлайн! &#x27A4; Оставляйте и читайте отзывы о книге на ЛитРес!','bookName',@bookname,'authors_list',@authors_list)"/></xsl:template>
</xsl:stylesheet>