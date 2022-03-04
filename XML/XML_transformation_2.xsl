<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="smartwatchCatalog">
        <countries>
            <xsl:apply-templates select="/smartwatchCatalog/smartwatch"/>
        </countries>
    </xsl:template>
    <xsl:template match="smartwatch">
        <smartwatch>
            <brandAndModel>
                <xsl:value-of select="concat(brand, ' ', model)"/>
            </brandAndModel>
            <priceAndCurrency>
                <xsl:value-of select="concat(price, ' ', price/@currency)"/>
            </priceAndCurrency>
            <year>
                <xsl:value-of select="year"/>
            </year>
            <features>
                <OSVersion>
                    <xsl:value-of select="features/OS/@version"/>
                </OSVersion>
                <OSCompatibility>
                    <xsl:value-of select="features/OS/@compatibility"/>
                </OSCompatibility>
            </features>
            <band>
                <bandChangeable>
                    <xsl:value-of select="band/@changeable"/>
                </bandChangeable>
                <colour>
                        <xsl:value-of select="band/colour"/>
                </colour>
                <style>
                    <xsl:value-of select="band/style"/>
                </style>
            </band>
        </smartwatch>
    </xsl:template>
</xsl:stylesheet>