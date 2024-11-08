<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/questions">
        <html>
            <head>
                <title>CUESTIONARIO</title>
                <link rel="stylesheet" href="questions.css"/>
            </head>
            <body>
                <h1>CUESTIONARIO</h1>
                <table>
                    <tr>
                        <th>ENUNCIADO</th>
                        <th>OPCIONES</th>
                        <th>RESPUESTA</th>
                    </tr>
                    <xsl:apply-templates select="question"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="question">
        <tr>
            <td>
                <xsl:value-of select="title"/>
            </td>
            <td>
                <xsl:apply-templates select="option"/>
            </td>
            <td>
                <xsl:apply-templates select="answer"/>
            </td>
        </tr>
    </xsl:template>


    <xsl:template match="option">
        <xsl:number format="1: "/>
        <xsl:value-of select="."/>
        <br />
    </xsl:template>
    
    <xsl:template match="answer">
        <xsl:value-of select="."/>
        <br />
    </xsl:template>
</xsl:stylesheet>
