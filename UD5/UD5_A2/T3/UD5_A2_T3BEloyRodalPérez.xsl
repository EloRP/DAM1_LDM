<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    
    <xsl:template match="/">
        <tr>
            <xsl:apply-templates select="equipos/máquina"/>
        </tr>
    </xsl:template>
    
    
    <xsl:template match="/">
        <html>
            <h1>Táboa de máquinas</h1>
            <table border="1">
                <tr>
                    <th>Máquina</th>
                    <th>Procesador</th>
                    <th>Memoria</th>
                </tr>
                <tr>
                    <td>
                        <xsl:value-of select="//@nome"/>
                    </td>
                    <td>
                        <xsl:value-of select="concat(//procesador/@marca, '-',//procesador)"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <xsl:value-of select="//@nome"/>
                    </td>
                    <td>
                        <xsl:value-of select="concat(//procesador/@marca, '-',//procesador)"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <xsl:value-of select="//@nome"/>
                    </td>
                    <td>
                        <xsl:value-of select="concat(//procesador/@marca, '-',//procesador)"/>
                    </td>
                </tr>
            </table>
        </html>
    </xsl:template>
  
</xsl:stylesheet>
