<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>BOOK Collection</h2>
  <table border="1">
    <tr bgcolor="orange">
      <th>Book name</th>
      <th>Author</th>
    </tr>
    <xsl:for-each select="class/book">
    <tr>
      <td><xsl:value-of select="bookname"/></td>
      <xsl:choose>
        <xsl:when test="price &gt; 300">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="author"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="author"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


