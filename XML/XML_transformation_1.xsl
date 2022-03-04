<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <smartwatches>
            <xsl:apply-templates select="/smartwatchCatalog/smartwatch"/>
        </smartwatches>
    </xsl:template>
    <xsl:template match="smartwatch">
        <smartwatch>
            <info>
                <brand>
                    <xsl:value-of select="brand"/>
                </brand>
                <model>
                    <xsl:value-of select="model"/>
                </model>
                <modelNumber>
                    <xsl:value-of select="model/@number"/>
                </modelNumber>
                <price>
                    <xsl:value-of select="price"/>
                </price>
                <priceCurrency>
                    <xsl:value-of select="price/@currency"/>
                </priceCurrency>

                <body>
                    <waterRating>
                        <xsl:value-of select="body/@waterRating"/>
                    </waterRating>
                </body>
            </info>
            <connection>
                <payment>
                    <xsl:value-of select="connection/payment"/>
                </payment>
            </connection>
            <features>
                <hasECG>
                    <xsl:value-of select="features/@ECG"/>
                </hasECG>
                <hasBloodO2>
                    <xsl:value-of select="features/@BloodO2"/>
                </hasBloodO2>
                <battery>
                    <capacityOfBattery>
                        <xsl:value-of select="features/battery/capacity"/>
                    </capacityOfBattery>
                </battery>
            </features>
        </smartwatch>
    </xsl:template>
</xsl:stylesheet>