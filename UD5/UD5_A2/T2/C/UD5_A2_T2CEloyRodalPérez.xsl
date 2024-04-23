<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        Cliente: <xsl:value-of select="//cliente/@cod"/>
         
        Numero de produtos: <xsl:value-of select="count(//produto)"/>
    </xsl:template>
</xsl:stylesheet>
