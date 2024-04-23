<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <xsl:template match="venda">
        <xsl:element name="{//cliente/@cod}">
            <xsl:attribute name="num_produtos">
                <xsl:value-of select="count(//produto)"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
