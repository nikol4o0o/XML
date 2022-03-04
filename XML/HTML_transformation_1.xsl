<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="smartwatchCatalog">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="HTML1.css"/>
            <title>Смарт часовници</title>
            </head>
            <body>
                <h1>Каталог за Смарт Часовници</h1>
                <h2>Снимки на часовниците централно, странично и върху ръка</h2>

                <xsl:for-each select="smartwatch">
                    <br/>
                    <b>
                        <xsl:value-of select="concat(brand,' ', model)"/>

                    </b>
                    <div>
                        <xsl:call-template name="gallery">
                            <xsl:with-param name="images1" select="gallery/frontImage"/>
                            <xsl:with-param name="images2" select="gallery/sideImage"/>
                            <xsl:with-param name="images3" select="gallery/onHandImage"/>
                        </xsl:call-template>
                        <xsl:value-of select="$newline"/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="gallery">
        <xsl:param name="images1"/>
        <xsl:param name="images2"/>
        <xsl:param name="images3"/>
        <img src="{$images1}" width="500" height="500" />
        <img src="{$images2}" width="500" height="500"/>
        <img src="{$images3}"  height="500" width="auto"/>
    </xsl:template>
    <xsl:variable name="newline">
        <xsl:text>

        </xsl:text>
    </xsl:variable>
</xsl:stylesheet>