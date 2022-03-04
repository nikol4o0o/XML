<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="UTF-8" method="html" />

    <xsl:template match="smartwatchCatalog">
        <html lang="en">
            <head>
                <link rel="stylesheet" type="text/css" href="HTML4.css"/>
                <title>XML каталог за Умни Часовници</title>
            </head>
            <body>
                <h1>Часовници</h1>
                <xsl:for-each select="smartwatch">
                            <div class="watch">
                                <h2><xsl:value-of select="concat(brand, ' ', model)"/></h2>
                                <section>
                                        <div class="flip-box">
                                            <div class="flip-box-inner">
                                                <div class="flip-box-front">
                                                    <xsl:call-template name="galleryFront">
                                                        <xsl:with-param name="frontImage" select="gallery/frontImage"/>
                                                    </xsl:call-template>
                                                </div>
                                                <div class="flip-box-back">

                                                    <xsl:call-template name="gallerySide">
                                                        <xsl:with-param name="sideImage" select="gallery/sideImage"/>
                                                    </xsl:call-template>
                                                </div>
                                            </div>
                                        </div>
                                    <div>
                                        <p>Каталожен номер: <xsl:value-of select="id" /></p>
                                        <p>Модел: <xsl:value-of select="model/@number" /></p>
                                        <p>Цена: <xsl:value-of select="concat(price, ' ', price/@currency)"/></p>
                                        <p>Технология на дисплея: <xsl:value-of select="display/type" /></p>
                                        <p>Памет: <xsl:value-of select="storage" /></p>
                                        <p>Рам памет: <xsl:value-of select="RAM" /></p>
                                        <p>EKG: <xsl:value-of select="features/@ECG"/> </p>
                                        <p>Процесор: <xsl:value-of select="features/CPU" /></p>
                                        <p>Операционна система: <xsl:value-of select="concat(features/OS, ' ', features/OS/@version)" /></p>
                                        <p>Съвместимост: <xsl:value-of select="features/OS/@compatibility" /></p>
                                        <p>Мрежа: <xsl:value-of select="connection/WLAN" /></p>
                                        <p>Блутут: <xsl:value-of select="connection/bluetooth" /></p>
                                        <p>Плащане: <xsl:value-of select="connection/payment" /></p>

                                        <p>Стил: <xsl:value-of select="band/style" /></p>
                                    </div>
                                </section>
                            </div>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="gallerySide">
    <xsl:param name="sideImage"/>
    <img src="{$sideImage}" width="150" height="150"/>
    </xsl:template>
    <xsl:template name="galleryFront">
        <xsl:param name="frontImage"/>
        <img src="{$frontImage}" width="150" height="150"/>
    </xsl:template>

</xsl:stylesheet>