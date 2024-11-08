<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/questions">
        <html>
            <head>
                <title>SOLUCIONES AL CUESTIONARIO</title>
                <link rel="stylesheet" href="questions.css"/>
            </head>
            <body>
                <h1>SOLUCIONES AL CUESTIONARIO</h1>
                <table>
                    <tr>
                        <th>PREGUNTA REALIZADA</th>
                        <th>RESPUESTA/S CORRECTAS</th>
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
                <xsl:choose>
                    <xsl:when test="type = 'text'">
                        <xsl:apply-templates select="answer" mode="text"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="option" mode="select" />
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>


    <xsl:template match="option" mode="select">
        <xsl:variable name="numero">
            <xsl:number format="1"/>
        </xsl:variable>
        
        <xsl:value-of select="concat($numero, ': ',.)" />
        <xsl:if test="$numero - 1 = ../answer">
            <img style="width:20;" src="correcto.png"/>
        </xsl:if>
        <br/>
    </xsl:template>
    
    <xsl:template match="answer" mode="text">
        <p style="color: green;">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
</xsl:stylesheet>
