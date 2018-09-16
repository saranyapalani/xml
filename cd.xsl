<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Students</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="cd">
  <p>
    <xsl:apply-templates select="name"/>  
    <xsl:apply-templates select="dept"/>
  </p>
</xsl:template>

<xsl:template match="name">
  Name: <span style="color:blue">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="dept">
  Department: <span style="color:pink">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>

