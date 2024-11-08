<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/Catalogo">
        <Equipamiento>
            <Portátiles>
                <xsl:for-each select="Seccion[@nome='Portátiles']/Marca/Portatil">
                    <Portatil marca="{../@nome}">
                        <Ref>
                            <xsl:value-of select="@ref"/>
                        </Ref>
                        <Nome>
                            <xsl:value-of select="Texto"/>
                        </Nome>
                    </Portatil>
                </xsl:for-each>
            </Portátiles>
            <Monitores>
                <xsl:for-each select="Seccion[@nome='Monitores']/Marca/Monitor">
                    <Monitor marca="{../@nome}">
                        <Ref>
                            <xsl:value-of select="@ref"/>
                        </Ref>
                        <Nome>
                            <xsl:value-of select="Texto"/>
                        </Nome>
                    </Monitor>
                </xsl:for-each>
            </Monitores>
        </Equipamiento>
    </xsl:template>
    
</xsl:stylesheet>
