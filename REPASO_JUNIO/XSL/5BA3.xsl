<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/Catalogo">
        <Material>
            <xsl:apply-templates select="Seccion[@nome='Portátiles']/Marca/Portatil"/>
            <xsl:apply-templates select="Seccion[@nome='Monitores']/Marca/Monitor"/>
        </Material>
    </xsl:template>
    
    <xsl:template match="Portatil">
        <xsl:comment>Tipo: Portátiles</xsl:comment>
        <Equipo marca="{../@id}">
            <xsl:value-of select="concat(../@nome, ' ', @ref)"/>
        </Equipo>
        <Características>
            <xsl:value-of select="concat(Procesador, Memoria, Disco, Pantalla, LAN, Wireless)"/>
        </Características>
    </xsl:template>
    
    <xsl:template match="Monitor">
        <xsl:comment>Tipo: Monitores</xsl:comment>
        <Equipo marca="{../@id}">
            <xsl:value-of select="concat(../@nome, ' ', @ref)"/>
        </Equipo>
        <Características>
            <xsl:value-of select="concat(Tamaño, Resolución, Resposta, Entradas)"/>
        </Características>
    </xsl:template>
    
</xsl:stylesheet>
