<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
<body>
<h2>BOOK COLLECTIONS</h2>
<table border = "1">
<tr bgcolor = "yellow">
<th>ID</th>
<th>Book name</th>
<th>Author</th>
</tr>
<xsl:for-each select="class/book">
<tr>
<td>
<xsl:value-of select = "@id"/>
</td>
<td><xsl:value-of select = "bookname"/></td>
<td><xsl:value-of select = "author"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
