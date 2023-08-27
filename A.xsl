<!-- ... More chapters here ... -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes"/>

  <!-- Match the root element 'book' -->
  <xsl:template match="book">
    <html>
      <head>
        <title><xsl:value-of select="title"/></title>
        <link rel="stylesheet" type="text/css" href="styles.css"/> <!-- Link to your CSS file -->
      </head>
      <body>
        <h1><xsl:value-of select="title"/></h1>
        <p><xsl:apply-templates select="author"/></p>
        <xsl:apply-templates select="chapter"/>
      </body>
    </html>
  </xsl:template>

  <!-- Match 'author' elements -->
  <xsl:template match="author">
    <xsl:value-of select="."/><br/>
  </xsl:template>

  <!-- Match 'chapter' elements -->
  <xsl:template match="chapter">
    <h2><xsl:value-of select="title"/></h2>
    <xsl:apply-templates select="paragraph"/>
  </xsl:template>

  <!-- Match 'paragraph' elements -->
  <xsl:template match="paragraph">
    <p><xsl:value-of select="."/></p>
  </xsl:template>
</xsl:stylesheet>