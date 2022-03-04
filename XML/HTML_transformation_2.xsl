<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="smartwatchCatalog">
        <html>
            <head>
                <title>XML Каталог за умни часовници</title>
                <link rel="stylesheet" type="text/css" href="HTML2.css"/>
            </head>
            <body>
                    <h2>Каталог за Смарт Часовници</h2>
                <xsl:for-each select="/smartwatchCatalog/smartwatch">
                    <table>
                        <tr>
                            <td>Марка: <xsl:value-of select="brand"/></td>
                        </tr>
                        <tr>
                            <td>Номер на модел: <xsl:value-of select="model/@number"/></td>
                        </tr>
                        <tr>
                            <td>Модел: <xsl:value-of select="model"/></td>
                        </tr>
                        <tr>
                            <td>Година: <xsl:value-of select="year"/></td>
                        </tr>
                        <tr>
                            <td>Цена: <xsl:value-of select="concat(price,' ', price/@currency)"/></td>
                        </tr>
                        <tr>
                            <td>Памет: <xsl:value-of select="storage"/></td>
                        </tr>
                        <tr>
                            <td>Размер на дисплея: <xsl:value-of select="body/display/size"/></td>
                        </tr>
                        <tr>
                            <td>Резолюция: <xsl:value-of select="body/display/resolution"/></td>
                        </tr>
                        <tr>
                            <td>Тегло: <xsl:value-of select="body/weight"/></td>
                        </tr>
                        <tr>
                            <td>Блутут: <xsl:value-of select="connection/bluetooth"/></td>
                        </tr>
                        <tr>
                            <td>Плащане: <xsl:value-of select="connection/payment"/></td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>