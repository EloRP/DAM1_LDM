<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent = "yes" />
    <xsl:template match="/Videoteca">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="peliculas.css"/>
                <title>Videoteca</title>
                <style>
                    ul {
                    list-style-type: none;
                    padding: 0;
                    }
                </style>
            </head>
            <body>
                <h1 class="encabezado">PELICULAS</h1>
                <ul>
                    <xsl:apply-templates select="Película/Título"/>
                </ul>
                <xsl:apply-templates select="Película"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Título">
        <li>
            <a href="#{generate-id(..)}">
                <h2 class="pelicula">
                    <xsl:value-of select="." />
                </h2>
            </a>
        </li>
    </xsl:template>

    <xsl:template match="Película">
        <br/>
        <div id="{generate-id()}">
            <h2 class="pelicula">
                <xsl:value-of select="Título" /> (<xsl:value-of select="TítuloOrixinal"/>), <xsl:value-of select="Ano"/>
            </h2>
            <p id="subtitulo">
                <xsl:value-of select="Director"/> 
                <xsl:if test="Xénero">
                    (<xsl:value-of select="Xénero"/>)
                </xsl:if>
            </p>
            <p class="actor">
                Actores: <xsl:apply-templates select="Actor"/>
            </p>
        </div>
    </xsl:template>
    
    <xsl:template match="Actor">
        <xsl:if test="position() > 1">, </xsl:if> 
        <xsl:value-of select="Nome"/>
    </xsl:template>

</xsl:stylesheet>
