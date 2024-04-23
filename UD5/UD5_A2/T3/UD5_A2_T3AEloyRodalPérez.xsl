<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" />
    
    <xsl:template match="/">
        <discos>
            <xsl:apply-templates select="equipos/máquina/hardware/disco"/>
        </discos>
    </xsl:template>
    
    <xsl:template match="disco">
        <xsl:element name="disco">
            <xsl:attribute name="tecnoloxía">
                <xsl:value-of select="@tecnoloxía"/>
            </xsl:attribute>
            <xsl:attribute name="capacidade">
                <xsl:value-of select="@capacidade"/>
            </xsl:attribute>
            <xsl:attribute name="máquina">
                <xsl:value-of select="../../@nome"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template> 
</xsl:stylesheet>
