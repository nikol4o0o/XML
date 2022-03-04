<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="smartwatchCatalog">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="HTML3.css"/>
                <title>XML каталог за Умни Часовници</title>
            </head>
            <body>
                <h1>Таблица с информация:</h1>
                <table>
                    <tr>
                        <th>Часовник</th>
                        <th>Модел</th>
                        <th>Година</th>
                        <th>Цена</th>
                        <th>Размер на дисплей</th>
                        <th>Технология на дисплея</th>
                        <th>Капацитет на батерия</th>
                        <th>Издръжливост</th>
                        <th>Снимка</th>

                    </tr>
                    <xsl:for-each select="smartwatch">
                        <tr >
                            <td>
                                <xsl:value-of select="concat(brand,' ', model)"/>
                            </td>
                            <td>
                                <xsl:value-of select="model/@number"/>
                            </td>
                            <td>
                                <xsl:value-of select="year"/>
                            </td>
                            <td>
                                <xsl:value-of select="concat(price,' ', price/@currency)"/>
                            </td>
                            <td>
                                <xsl:value-of select="body/display/size"/>
                            </td>
                            <td>
                                <xsl:value-of select="body/display/type"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/battery/capacity"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/battery/hoursRated"/>
                            </td>
                            <td><div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front">
                                        <xsl:call-template name="gallery">
                                            <xsl:with-param name="images1" select="gallery/sideImage"/>
                                        </xsl:call-template>
                                    </div>
                                    <div class="flip-box-back">
                                        <h2>Информация за каишката</h2>
                                        <p1>Размер:<xsl:value-of select="band/sizing"/></p1>
                                        <xsl:text>&#xa;</xsl:text>
                                        <p2>Материал:<xsl:value-of select="band/materialBand"/></p2>
                                        <xsl:text>&#xa;</xsl:text>
                                        <p3>Цвят:<xsl:value-of select="band/colour"/></p3>
                                    </div>
                                </div>
                            </div>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="gallery">
        <xsl:param name="images1"/>
        <img src="{$images1}" width="200" height="200"/>
    </xsl:template>
</xsl:stylesheet>
