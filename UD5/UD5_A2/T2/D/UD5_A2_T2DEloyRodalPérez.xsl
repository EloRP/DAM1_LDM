<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    
    <xsl:template match="produto">
        <xsl:text>Produto da familia </xsl:text>
        <xsl:value-of select="substring(@cod, 1, 5)"/>
        <xsl:text> con código </xsl:text>
        <xsl:value-of select="substring(@cod, 6)"/>
        <xsl:text> para o cliente de código </xsl:text>
        <xsl:value-of select="//cliente/@cod"/>
        <xsl:text>&#10;</xsl:text> <!-- Salto de línea -->
    </xsl:template>
</xsl:stylesheet>