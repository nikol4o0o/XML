<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method = "text"/>
    <xsl:template match="/">
        <xsl:for-each select="/smartwatchCatalog/smartwatch">

            Марка: <xsl:value-of select="brand"/>
            Модел: <xsl:value-of select="model"/>
            Година: <xsl:value-of select="year"/>
            Цена: <xsl:value-of select="concat(price,' ', price/@currency)"/>
            Памет: <xsl:value-of select="storage"/>
            Процесор: <xsl:value-of select="features/CPU"/>
            Тегло: <xsl:value-of select="body/weight"/>


        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>