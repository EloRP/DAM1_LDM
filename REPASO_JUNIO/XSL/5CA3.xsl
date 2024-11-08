<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/Catalogo">
        <html>
            <head>
                <title>CATALOGO</title>
                <link rel="stylesheet" href="catalogo.css"/>
            </head>
            <body>
                <h1 class="titulo">CATALOGO</h1>
                <hr/>
                <table border="1">
                    <tr>
                        <td class="subtitulo">Portátiles</td>
                        <xsl:for-each select="Seccion[@nome='Portátiles']/Marca/Portatil">
                            <td>
                                <a href="#{@ref}">
                                    <xsl:value-of select="concat(../@nome, @ref)"/>
                                </a>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="subtitulo">Monitores</td>
                        <xsl:for-each select="Seccion[@nome='Monitores']/Marca/Monitor">
                            <td>
                                <a href="#{@ref}">
                                    <xsl:value-of select="concat(../@nome, @ref)"/>
                                </a>
                            </td>
                        </xsl:for-each>
                    </tr>
                </table>
                <hr/>
                
                <xsl:for-each select="Seccion">
                    <xsl:for-each select="Marca">
                        <xsl:for-each select="Portatil | Monitor">
                            <br/>
                            <div>
                                <a id="{@ref}" class="nome">
                                    <xsl:value-of select="Texto"/>
                                </a>
                            </div>
                            <div class="caracteristicas">
                                <p>
                                    <xsl:value-of select="SO"/>
                                    <xsl:value-of select="Tamaño"/>
                                </p>
                                <p>
                                    <xsl:value-of select="Procesador" />
                                    <xsl:value-of select="Resolución" />
                                </p>
                                <p>
                                    <xsl:value-of select="Memoria" />
                                    <xsl:value-of select="Resposta" />
                                </p>
                                <p>
                                    <xsl:value-of select="Disco" />
                                    <xsl:value-of select="Altavoces" />
                                </p>
                            </div>
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
