<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" encoding="UTF-8" method="text"/>
    <xsl:template match="/">
        Информация за часовници:
        <xsl:for-each select="/smartwatchCatalog/smartwatch">
            Марка: <xsl:value-of select="brand"/>
            Модел: <xsl:value-of select="model"/>
            Рамер на дисплея: <xsl:value-of select="body/display/size"/>
            Материал на корпуса: <xsl:value-of select="body/caseMaterial"/>
            Сертификат за водоустойчивост: <xsl:value-of select="body/@waterRating"/>
            <xsl:call-template name="features"/>
            <xsl:call-template name="battery"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="features">
            ЕКГ: <xsl:value-of select="features/@ECG"/>
            Сатурация на кислород в кръвта: <xsl:value-of select="features/@BloodO2"/>
    </xsl:template>

    <xsl:template name="battery">
            Капацитет на батерия: <xsl:value-of select="features/battery/capacity"/>
            Издръжливост: <xsl:value-of select="features/battery/hoursRated"/>
            Технология на батерията: <xsl:value-of select="features/battery/typeOfBattery"/>
    </xsl:template>
    <xsl:variable name="newline">
        <xsl:text>

        </xsl:text>
    </xsl:variable>
</xsl:stylesheet>