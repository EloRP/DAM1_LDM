<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Cliente: <xsl:value-of select="//cliente/@cod"/></title>
            </head>
            <body>
                Cliente: <xsl:value-of select="//cliente/@cod"/><br/>
                Número de productos: <xsl:value-of select="count(//produto)"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>