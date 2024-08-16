<?xml version="1.0" encoding="UTF-8" standalone="no"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:lcl="http://www.efatura.gov.tr/local" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi lcl" version="2.0">
    <xsl:variable name="LOGO_POSITION_X" select="'0'"/>
    <xsl:variable name="LOGO_POSITION_Y" select="'0'"/>
    <xsl:character-map name="a">
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
        <xsl:output-character character="" string=""/>
    </xsl:character-map>
    <xsl:decimal-format NaN="" decimal-separator="," grouping-separator="." name="european"/>
    <xsl:output doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" encoding="UTF-8" indent="no" method="html" use-character-maps="a" version="4.0"/>
    <xsl:param name="SV_OutputFormat" select="'HTML'"/>
    <xsl:variable name="XML" select="/"/>
    <xsl:variable name="vareczanehizmetbedeli">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_EHB:')">
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_EHB:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($vareczanehizmetbedeli) != '' and normalize-space($vareczanehizmetbedeli) != 'null'">
                <xsl:value-of select="$vareczanehizmetbedeli"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:variable name="vareczanehizmetbedeli">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_EHB:'">
                    <xsl:variable name="vareczanehizmetbedeliControl" select="normalize-space(substring-after(substring(.,8),':'))"/>
                    <xsl:choose>
                        <xsl:when test="$vareczanehizmetbedeliControl != 'null' and $vareczanehizmetbedeliControl">
                            <xsl:value-of select="$vareczanehizmetbedeliControl"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="vareczanehizmetbedeli20">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_EHB20:')">
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_EHB20:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($vareczanehizmetbedeli20) != '' and normalize-space($vareczanehizmetbedeli20) != 'null'">
                <xsl:value-of select="$vareczanehizmetbedeli20"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--
    <xsl:variable name="vareczanehizmetbedeli20">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,11) = 'SGK_EHB20:'">
                    <xsl:variable name="vareczanehizmetbedeli20Control" select="normalize-space(substring-after(substring(.,8),':'))"/>
                    <xsl:choose>
                        <xsl:when test="$vareczanehizmetbedeli20Control != 'null' and $vareczanehizmetbedeli20Control">
                            <xsl:value-of select="$vareczanehizmetbedeli20Control"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="vartutar">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_BRT:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="variskonto">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_ISK:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varkatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_HKP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varisitmekatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_IKP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varilacfarki">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_ILF:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varsiparissorumlusu">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,4) = 'SS:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,3),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varkdv8">

        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_K08:')">
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_K08:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>

    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($varkdv8) != '' and normalize-space($varkdv8) != 'null'">
                <xsl:value-of select="$varkdv8"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--
    <xsl:variable name="varkdv8">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_K08:'">
                    <xsl:variable name="varkdv8Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$varkdv8Control != 'null' and $varkdv8Control">
                            <xsl:value-of select="$varkdv8Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable> -->
    <xsl:variable name="varkdv10">
        <!-- İç içe döngü yerine doğrudan seçme -->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_K10:')">

                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_K10:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($varkdv10) != '' and normalize-space($varkdv10) != 'null' and normalize-space($varkdv10) != 'undefined'">
                <xsl:value-of select="$varkdv10"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:variable name="varkdv10">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_K10:'">
                    <xsl:variable name="varkdv10Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$varkdv10Control != 'null' and $varkdv10Control != 'undefined'">
                            <xsl:value-of select="$varkdv10Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="varkdv18">
        <!-- İç içe döngü yerine doğrudan seçme -->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_K18:')">
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_K18:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($varkdv18) != '' and normalize-space($varkdv18) != 'null' and normalize-space($varkdv18) != 'undefined'">
                <xsl:value-of select="$varkdv18"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--<xsl:variable name="varkdv18">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_K18:'">
                    <xsl:variable name="varkdv18Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$varkdv18Control != 'null' and $varkdv18Control != 'undefined'">
                            <xsl:value-of select="$varkdv18Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="varkdv20">
        <!-- İç içe döngü yerine doğrudan seçme -->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_K20:')">
                    <!-- Normalize edilmiş değeri doğrudan al -->
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_K20:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>

    <!-- Kullanım sırasında -->
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($varkdv20) != '' and normalize-space($varkdv20) != 'null' and normalize-space($varkdv20) != 'undefined'">
                <xsl:value-of select="$varkdv20"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:variable name="varkdv20">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_K20:'">
                    <xsl:variable name="varkdv20Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$varkdv20Control != 'null' and $varkdv20Control != 'undefined'">
                            <xsl:value-of select="$varkdv20Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="vareczanekdv18">
        <!-- İç içe döngü yerine doğrudan seçme -->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_EHK:')">
                    <!-- Normalize edilmiş değeri doğrudan al -->
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_EHK:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>

    <!-- Kullanım sırasında -->
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($vareczanekdv18) != '' and normalize-space($vareczanekdv18) != 'null' and normalize-space($vareczanekdv18) != 'undefined'">
                <xsl:value-of select="$vareczanekdv18"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--<xsl:variable name="vareczanekdv18">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_EHK:'">
                    <xsl:variable name="vareczanekdv18Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$vareczanekdv18Control != 'null' and $vareczanekdv18Control != 'undefined'">
                            <xsl:value-of select="$vareczanekdv18Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="vareczanekdv20">
        <!-- İç içe döngü yerine doğrudan seçme -->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="starts-with(., 'SGK_EHK20:')">
                    <!-- Normalize edilmiş değeri doğrudan al -->
                    <xsl:value-of select="normalize-space(substring-after(., 'SGK_EHK20:'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>

    <!-- Kullanım sırasında -->
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="normalize-space($vareczanekdv20) != '' and normalize-space($vareczanekdv20) != 'null' and normalize-space($vareczanekdv20) != 'undefined'">
                <xsl:value-of select="$vareczanekdv20"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:variable name="vareczanekdv20">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,11) = 'SGK_EHK20:'">
                    <xsl:variable name="vareczanekdv20Control" select="normalize-space(substring-after(substring(.,8),':'))" />
                    <xsl:choose>
                        <xsl:when test="$vareczanekdv20Control != 'null' and $vareczanekdv20Control != 'undefined'">
                            <xsl:value-of select="$vareczanekdv20Control" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>-->
    <xsl:variable name="varpsf">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_PSF:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varreceteadedi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_RCA:'">
                    <xsl:value-of select="substring-after(substring(.,8),':')"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="vareldenilackatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_EIP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varmaasdanilackatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_MIP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="vareldenmuayenekatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_EMP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varmaasmuayenekatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_MMP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="vareldenrecetekatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_ERP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varmaastanrecetekatilimpayi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_MRP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,8),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varfaturatipi">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,12) = 'FATURATIPI:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,10),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varoptik">
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,9) = 'SGK_TYP:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,7),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varfaturatype">
        <!--		Cetas ise kullanılacak-->
        <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
		Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
        <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
                <xsl:when test="substring(.,0,13) = 'FATURA_TYPE:'">
                    <xsl:value-of select="normalize-space(substring-after(substring(.,11),':'))"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varExportInsurance" select="count(//cac:Shipment[cbc:InsuranceValueAmount])"/>
    <xsl:variable name="varExportCarriage" select="count(//cac:Shipment[cbc:DeclaredForCarriageValueAmount])"/>
    <xsl:variable name="varEtiketFiyati">
        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
            <xsl:for-each select="cbc:Note">
                <xsl:choose>
                    <xsl:when test="substring(.,0,5) = 'ETF:' or substring(.,0,5) = 'ESF:'">
                        <xsl:value-of select="1"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varEczaciKar">
        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
            <xsl:for-each select="cbc:Note">
                <xsl:choose>
                    <xsl:when test="substring(.,0,5) = 'ECK:' or substring(.,0,5) = 'EKO:'">
                        <xsl:value-of select="1"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varKurumIskonto">
        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
            <xsl:for-each select="cbc:Note">
                <xsl:choose>
                    <xsl:when test="substring(.,0,5) = 'KRI:'">
                        <xsl:value-of select="1"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varDepocuFiyati">
        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
            <xsl:for-each select="cbc:Note">
                <xsl:choose>
                    <xsl:when test="substring(.,0,5) = 'DSF:'">
                        <xsl:value-of select="1"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varVade">
        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
            <xsl:for-each select="cbc:Note">
                <xsl:choose>
                    <xsl:when test="substring(.,0,5) = 'VAD:'">
                        <xsl:value-of select="1"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varBranchName">
        <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='SUBE_UNVAN']">
            <xsl:choose>
                <xsl:when test="../cbc:DocumentTypeCode='SUBE_UNVAN'">
                    <xsl:value-of select="1"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>

    <xsl:variable name="varSenaryoName">
        <xsl:for-each select="//n1:Invoice/cbc:ProfileID">
            <xsl:choose>
                <xsl:when test="substring(.,0,5) = 'KAMU'">
                    <xsl:value-of select="1"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:variable>
    <xsl:variable name="varVknComp">
        <xsl:if test="(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN'])=(//n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN'])">
            <xsl:value-of select="1"/>
        </xsl:if>
    </xsl:variable>

    <xsl:variable name="varItemCode" select="count(//cac:SellersItemIdentification[cbc:ID !=''])"/>
    <xsl:variable name="varAllowanceRate" select="count(//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric !=''])"/>
    <xsl:variable name="varAllowanceAmount" select="count(//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:Amount !=''])"/>
    <xsl:variable name="varAllowanceReason" select="count(//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:AllowanceChargeReason !=''])"/>
    <xsl:variable name="varLineExplanation" select="count(//n1:Invoice/cac:InvoiceLine[cbc:Note !=''])"/>

    <xsl:template match="/">
        <html>
            <head>
                <script type="text/javascript">
                    <![CDATA[var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),this._android=n(),this._el=a,this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();]]>
                </script>
                <style type="text/css">
                    body {
                    background-color: #FFFFFF;
                    font-family: 'Tahoma', "Times New Roman", Times, serif;
                    font-size: 11px;
                    color: #000000;
                    }
#companylogo {
                    position:absolute;
    transform:translate(-500.0px,0.0px);
                  }
                    h1, h2 {
                    padding-bottom: 3px;
                    padding-top: 3px;
                    margin-bottom: 5px;
                    text-transform: uppercase;
                    font-family: Arial, Helvetica, sans-serif;
                    }
                    h1 {
                    font-size: 1.4em;
                    text-transform:none;
                    }
                    h2 {
                    font-size: 1em;
                    color: brown;
                    }
                    h3 {
                    font-size: 1em;
                    color: #000000;
                    text-align: justify;
                    margin: 0;
                    padding: 0;
                    }
                    h4 {
                    font-size: 1.1em;
                    font-style: bold;
                    font-family: Arial, Helvetica, sans-serif;
                    color: #000000;
                    margin: 0;
                    padding: 0;
                    }
                    hr {
                    height:2px;
                    color: #000000;
                    background-color: #000000;
                    border-bottom: 1px solid #000000;
                    }
                    p, ul, ol {
                    margin-top: 1.5em;
                    }
                    ul, ol {
                    margin-left: 3em;
                    }
                    blockquote {
                    margin-left: 3em;
                    margin-right: 3em;
                    font-style: italic;
                    }
                    a {
                    text-decoration: none;
                    color: #70A300;
                    }
                    a:hover {
                    border: none;
                    color: #70A300;
                    }
                    #customerPartyTable {
                    border-width: 0px;
                    border-spacing:;
                    border-style: inset;
                    border-color: gray;
                    border-collapse: collapse;
                    background-color:
                    }
                    #customerIDTable {
                    border-width: 2px;
                    border-spacing:;
                    border-style: inset;
                    border-color: gray;
                    border-collapse: collapse;
                    background-color:
                    }
                    #customerIDTableTd {
                    border-width: 2px;
                    border-spacing:;
                    border-style: inset;
                    border-color: gray;
                    border-collapse: collapse;
                    background-color:
                    }
                    #lineTable {
                    border-width:2px;
                    border-spacing:;
                    border-style: inset;
                    border-color: black;
                    border-collapse: collapse;
                    background-color:;
                    }
                    td.lineTableTd {
                    border-width: 1px;
                    padding: 1px;
                    border-style: inset;
                    border-color: black;
                    background-color: white;
                    }
                    #lineTableDummyTd {
                    border-width: 1px;
                    border-color:white;
                    padding: 1px;
                    border-style: inset;
                    border-color: black;
                    background-color: white;
                    }
                    td.lineTableBudgetTd {
                    border-width: 2px;
                    border-spacing:0px;
                    padding: 1px;
                    border-style: inset;
                    border-color: black;
                    background-color: white;
                    -moz-border-radius:;
                    }
                    #notesTable {
                    border-width: 2px;
                    border-spacing:;
                    border-style: inset;
                    border-color: black;
                    
                    background-color:
                    }
                    #notesTableTd {
                    border-width: 0px;
                    border-spacing:;
                    border-style: inset;
                    border-color: black;
                    border-collapse: collapse;
                    background-color:
                    }
                    table {
                    border-spacing:0px;
                    }
                    #budgetContainerTable {
                    border-width: 0px;
                    border-spacing: 0px;
                    border-style: inset;
                    border-color: black;
                    border-collapse: collapse;
                    background-color:;
                    }
                    td {
                    border-color:gray;
                    }
                    #invoice-info-td {
                    border-style: solid;
                    border-width: 1px;
                    width: 50%;
                    }
                    #invoice-line-td {
                    border-style: solid;
                    border-width: 1px;

                
</style>
                <title>e-Belge</title>
            </head>

            <body style="width:800px;">
                <xsl:for-each select="$XML">



                    <!-- GONDERICI - EARSIV LOGO - FIRMA LOGO TABLOSU -->
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td style="width: 40%;">
                                    <hr/>


                                    <!-- GONDERICI TABLOSU -->
                                    <table style="width: 100%;">
                                        <tbody>
                                            <tr align="left">
                                                <td align="left">
                                                    <xsl:if test="count(//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='SUBE_UNVAN']) &gt;= 1">
                                                        <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='SUBE_UNVAN']">
                                                            <xsl:value-of select="../cbc:DocumentType"/>
                                                            <br/>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                    <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                                                        <xsl:if test="$varBranchName= '' or count(//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN']) &gt;= 1">
                                                            <xsl:if test="cac:PartyName">
                                                                <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                                                <br/>
                                                            </xsl:if>
                                                        </xsl:if>
                                                        <xsl:for-each select="cac:Person">
                                                            <xsl:for-each select="cbc:Title">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:FirstName">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:MiddleName">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:FamilyName">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:NameSuffix">
                                                                <xsl:apply-templates/>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                                                    <td align="left">
                                                        <xsl:for-each select="cac:PostalAddress">
                                                            <xsl:for-each select="cbc:StreetName">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:BuildingName">
                                                                <xsl:apply-templates/>
                                                            </xsl:for-each>
                                                            <xsl:if test="cbc:BuildingNumber">
                                                                <xsl:text> No:</xsl:text>
                                                                <xsl:for-each select="cbc:BuildingNumber">
                                                                    <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:if>
                                                            <br/>
                                                            <xsl:if test="cbc:Room">
                                                                <xsl:text> Kapı No:</xsl:text>
                                                                <xsl:for-each select="cbc:Room">
                                                                    <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:if>
                                                            <br/>
                                                            <xsl:for-each select="cbc:PostalZone">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                            <xsl:for-each select="cbc:CitySubdivisionName">
                                                                <xsl:apply-templates/>
                                                            </xsl:for-each>
                                                            <xsl:text>/ </xsl:text>
                                                            <xsl:for-each select="cbc:CityName">
                                                                <xsl:apply-templates/>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                                                <tr align="left">
                                                    <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                                                        <td align="left">
                                                            <xsl:for-each select="cac:Contact">
                                                                <xsl:if test="cbc:Telephone">
                                                                    <xsl:text>Tel: </xsl:text>
                                                                    <xsl:for-each select="cbc:Telephone">
                                                                        <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                </xsl:if>
                                                                <xsl:if test="cbc:Telefax">
                                                                    <xsl:text> Fax: </xsl:text>
                                                                    <xsl:for-each select="cbc:Telefax">
                                                                        <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                </xsl:if>
                                                                <xsl:text> </xsl:text>
                                                            </xsl:for-each>
                                                        </td>
                                                    </xsl:for-each>
                                                </tr>
                                            </xsl:if>
                                            <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
                                                <tr align="left">
                                                    <td>
                                                        <xsl:text>Web Sitesi: </xsl:text>
                                                        <xsl:value-of select="."/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                                                <tr align="left">
                                                    <td>
                                                        <xsl:text>E-Posta: </xsl:text>
                                                        <xsl:value-of select="."/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <tr align="left">
                                                <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                                                    <td align="left">
                                                        <xsl:text>Vergi Dairesi: </xsl:text>
                                                        <xsl:for-each select="cac:PartyTaxScheme">
                                                            <xsl:for-each select="cac:TaxScheme">
                                                                <xsl:for-each select="cbc:Name">
                                                                    <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                            <xsl:text>  </xsl:text>
                                                        </xsl:for-each>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
                                                <tr align="left">
                                                    <xsl:choose>
                                                        <xsl:when test="cbc:ID/@schemeID = 'MERSISNO'">
                                                            <td>
                                                                <xsl:text>Mersis No: </xsl:text>
                                                                <xsl:value-of select="cbc:ID"/>
                                                            </td>
                                                        </xsl:when>
                                                        <xsl:when test="cbc:ID/@schemeID = 'TICARETSICILNO'">
                                                            <td>
                                                                <xsl:text>Ticaret Sicil No: </xsl:text>
                                                                <xsl:value-of select="cbc:ID"/>
                                                            </td>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <td>
                                                                <xsl:value-of select="cbc:ID/@schemeID"/>
                                                                <xsl:text>: </xsl:text>
                                                                <xsl:value-of select="cbc:ID"/>
                                                            </td>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType[text()='MESUL_MUDUR_AD_SOYAD']">
                                                <tr align="left">
                                                    <td align="left">
                                                        <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_AD_SOYAD'">
                                                            <xsl:text>Mesul Müdür: </xsl:text>
                                                        </xsl:if>
                                                        <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_AD_SOYAD'">
                                                            <xsl:value-of select="../cbc:DocumentTypeCode"/>
                                                        </xsl:if>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:if test="count(//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType[text()='MESUL_MUDUR_BELGE_NO']) &gt;= 1 and count(//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType[text()='MESUL_MUDUR_RUHSATNAME_TARIH']) &gt;= 1">
                                                <tr align="left">
                                                    <td align="left">
                                                        <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType[text()='MESUL_MUDUR_RUHSATNAME_TARIH']">
                                                            <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_RUHSATNAME_TARIH'">
                                                                <xsl:text>Ruhsat Tarihi: </xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_RUHSATNAME_TARIH'">
                                                                <xsl:value-of select="substring(../cbc:DocumentTypeCode,9,2)"/>-<xsl:value-of select="substring(../cbc:DocumentTypeCode,6,2)"/>-<xsl:value-of select="substring(../cbc:DocumentTypeCode,1,4)"/>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                        <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType[text()='MESUL_MUDUR_BELGE_NO']">
                                                            <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_BELGE_NO'">
                                                                <xsl:text> - Belge No: </xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="../cbc:DocumentType='MESUL_MUDUR_BELGE_NO'">
                                                                <xsl:value-of select="../cbc:DocumentTypeCode"/>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </tbody>
                                    </table>
                                    <hr/>
                                </td>


                                <!-- E-ARSIV FATURA LOGO -->
                                <td style="width: 20%; text-align: center;">
                                    <img align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QBoRXhpZgAASUkqAAgAAAADABIBAwABAAAAAQAAADEBAgAQAAAAMgAAAGmHBAABAAAAQgAAAAAAAABTaG90d2VsbCAwLjIyLjAAAgACoAkAAQAAAKYBAAADoAkAAQAAAKYBAAAAAAAA/+EJ9Gh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8APD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNC40LjAtRXhpdjIiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpleGlmPSJodHRwOi8vbnMuYWRvYmUuY29tL2V4aWYvMS4wLyIgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iIGV4aWY6UGl4ZWxYRGltZW5zaW9uPSI0MjIiIGV4aWY6UGl4ZWxZRGltZW5zaW9uPSI0MjIiIHRpZmY6SW1hZ2VXaWR0aD0iNDIyIiB0aWZmOkltYWdlSGVpZ2h0PSI0MjIiIHRpZmY6T3JpZW50YXRpb249IjEiLz4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8P3hwYWNrZXQgZW5kPSJ3Ij8+/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUE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" style="width:91px;"/>
                                    <h1 style="text-align: center;">
                                        <span style="font-weight:bold; ">
                                            <xsl:choose>
                                                <xsl:when test="//n1:Invoice/cbc:ProfileID='EARSIVFATURA' or //n1:Invoice/cbc:ProfileID='EBELGE'">
                                                    <xsl:text>e-Arşiv Fatura</xsl:text>
                                                </xsl:when>
                                                <xsl:when test="//n1:Invoice/cbc:ProfileID='EGIDERPUSULASI'">
                                                    <xsl:text>e-Gider Pusulası</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text>e-FATURA</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </span>
                                    </h1>
                                </td>

                                <!-- FIRMA LOGOSU -->
                                <td style="width: 40%; text-align: center;">
                                    <table style="width: 100%;">
                                        <tbody>
                                            <tr align="right">
                                                <td align="right">
                                                    <div id="qrcode" style="float:right; margin-top: -6px;"/>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td align="right">
                                                    <img alt="company_logo" id="companylogo" src="data:image/png;base64,                                                      iVBORw0KGgoAAAANSUhEUgAAAVQAAACcCAMAAAAXgKPqAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAADr5aVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/Pgo8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzOCA3OS4xNTk4MjQsIDIwMTYvMDkvMTQtMDE6MDk6MDEgICAgICAgICI+CiAgIDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CiAgICAgIDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iCiAgICAgICAgICAgIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiCiAgICAgICAgICAgIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIKICAgICAgICAgICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIgogICAgICAgICAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgICAgICAgICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE3IChXaW5kb3dzKTwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAxOS0wNS0yMlQxMzozNjo1NCswMzowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx4bXA6TWV0YWRhdGFEYXRlPjIwMTktMDUtMjJUMTM6MzY6NTQrMDM6MDA8L3htcDpNZXRhZGF0YURhdGU+CiAgICAgICAgIDx4bXA6TW9kaWZ5RGF0ZT4yMDE5LTA1LTIyVDEzOjM2OjU0KzAzOjAwPC94bXA6TW9kaWZ5RGF0ZT4KICAgICAgICAgPHhtcE1NOkluc3RhbmNlSUQ+eG1wLmlpZDphYjkwODYzOC0yMzg1LTY0NDItYmQ3OS00NTA2MDFkMzhhMTg8L3htcE1NOkluc3RhbmNlSUQ+CiAgICAgICAgIDx4bXBNTTpEb2N1bWVudElEPmFkb2JlOmRvY2lkOnBob3Rvc2hvcDo4NDQ3YzBkMi03YzdkLTExZTktYmJiMi1kNWUyYjY5NTc1ZmU8L3htcE1NOkRvY3VtZW50SUQ+CiAgICAgICAgIDx4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ+eG1wLmRpZDo5YWRhMWMwZC0yY2IxLTM0NGMtODg2Mi0xMTcwOGQwODkzNGU8L3htcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD4KICAgICAgICAgPHhtcE1NOkhpc3Rvcnk+CiAgICAgICAgICAgIDxyZGY6U2VxPgogICAgICAgICAgICAgICA8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OmFjdGlvbj5jcmVhdGVkPC9zdEV2dDphY3Rpb24+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDppbnN0YW5jZUlEPnhtcC5paWQ6OWFkYTFjMGQtMmNiMS0zNDRjLTg4NjItMTE3MDhkMDg5MzRlPC9zdEV2dDppbnN0YW5jZUlEPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6d2hlbj4yMDE5LTA1LTIyVDEzOjM2OjU0KzAzOjAwPC9zdEV2dDp3aGVuPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6c29mdHdhcmVBZ2VudD5BZG9iZSBQaG90b3Nob3AgQ0MgMjAxNyAoV2luZG93cyk8L3N0RXZ0OnNvZnR3YXJlQWdlbnQ+CiAgICAgICAgICAgICAgIDwvcmRmOmxpPgogICAgICAgICAgICAgICA8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OmFjdGlvbj5zYXZlZDwvc3RFdnQ6YWN0aW9uPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6aW5zdGFuY2VJRD54bXAuaWlkOmFiOTA4NjM4LTIzODUtNjQ0Mi1iZDc5LTQ1MDYwMWQzOGExODwvc3RFdnQ6aW5zdGFuY2VJRD4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OndoZW4+MjAxOS0wNS0yMlQxMzozNjo1NCswMzowMDwvc3RFdnQ6d2hlbj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OnNvZnR3YXJlQWdlbnQ+QWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpPC9zdEV2dDpzb2Z0d2FyZUFnZW50PgogICAgICAgICAgICAgICAgICA8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPgogICAgICAgICAgICAgICA8L3JkZjpsaT4KICAgICAgICAgICAgPC9yZGY6U2VxPgogICAgICAgICA8L3htcE1NOkhpc3Rvcnk+CiAgICAgICAgIDxwaG90b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+CiAgICAgICAgICAgIDxyZGY6QmFnPgogICAgICAgICAgICAgICA8cmRmOmxpPnhtcC5kaWQ6NzBDNDgwQkQ5OTQ1MTFFODg3RTFGQkI1M0EwREU0OTU8L3JkZjpsaT4KICAgICAgICAgICAgPC9yZGY6QmFnPgogICAgICAgICA8L3Bob3Rvc2hvcDpEb2N1bWVudEFuY2VzdG9ycz4KICAgICAgICAgPHBob3Rvc2hvcDpDb2xvck1vZGU+MzwvcGhvdG9zaG9wOkNvbG9yTW9kZT4KICAgICAgICAgPHBob3Rvc2hvcDpJQ0NQcm9maWxlPnNSR0IgSUVDNjE5NjYtMi4xPC9waG90b3Nob3A6SUNDUHJvZmlsZT4KICAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9wbmc8L2RjOmZvcm1hdD4KICAgICAgICAgPHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj4KICAgICAgICAgPHRpZmY6WFJlc29sdXRpb24+MjU2MDAwMC8xMDAwMDwvdGlmZjpYUmVzb2x1dGlvbj4KICAgICAgICAgPHRpZmY6WVJlc29sdXRpb24+MjU2MDAwMC8xMDAwMDwvdGlmZjpZUmVzb2x1dGlvbj4KICAgICAgICAgPHRpZmY6UmVzb2x1dGlvblVuaXQ+MjwvdGlmZjpSZXNvbHV0aW9uVW5pdD4KICAgICAgICAgPGV4aWY6Q29sb3JTcGFjZT4xPC9leGlmOkNvbG9yU3BhY2U+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4zNDA8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICAgICA8ZXhpZjpQaXhlbFlEaW1lbnNpb24+MTU2PC9leGlmOlBpeGVsWURpbWVuc2lvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgCjw/eHBhY2tldCBlbmQ9InciPz6en/ECAAAACXBIWXMAACdfAAAnXwEdhrpqAAACOlBMVEVHcEwXeb4NbbZYWFokiMkXd71XcVMWe8ARa7QxdZQRdrweg8Usd5YSbLUPcrkafsINbrZYWFodhMcQarQzeZkiiMkPeb4Ra7QQeb4cgsQOeL5jrkNYWFoXf8JYWFoNcbgLc7pY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 " width="255"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>


                    <!-- ALICI - IMZA - FATURA BILGILERI TABLOSU -->
                    <table>
                        <tbody>
                            <tr>
                                <td style="width: 40%;">
                                    <table align="left" border="0" id="customerPartyTable">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <hr/>
                                                    <table align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                                    <td align="left" style="width:469px; ">
                                                                        <span style="font-weight:bold; ">
                                                                            <xsl:text>SAYIN</xsl:text>
                                                                        </span>
                                                                    </td>
                                                                </xsl:for-each>
                                                            </tr>
                                                            <tr>
                                                                <xsl:choose>
                                                                    <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                                                        <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                            <xsl:call-template name="Party_Title">
                                                                                <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </xsl:for-each>
                                                                    </xsl:when>
                                                                    <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and starts-with(text(), 'EXPORT')]">
                                                                        <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                            <xsl:call-template name="Party_Title">
                                                                                <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </xsl:for-each>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                                            <xsl:call-template name="Party_Title">
                                                                                <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </xsl:for-each>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </tr>
                                                            <xsl:choose>
                                                                <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                                                    <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                        <tr>
                                                                            <xsl:call-template name="Party_Adress">
                                                                                <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </tr>
                                                                        <xsl:call-template name="Party_Other">
                                                                            <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                        </xsl:call-template>
                                                                    </xsl:for-each>
                                                                </xsl:when>
                                                                <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and starts-with(text(), 'EXPORT')]">
                                                                    <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                        <tr>
                                                                            <xsl:call-template name="Party_Adress">
                                                                                <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </tr>
                                                                        <xsl:call-template name="Party_Other">
                                                                            <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                        </xsl:call-template>
                                                                    </xsl:for-each>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                                        <tr>
                                                                            <xsl:call-template name="Party_Adress">
                                                                                <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                                                            </xsl:call-template>
                                                                        </tr>
                                                                        <xsl:call-template name="Party_Other">
                                                                            <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                                                        </xsl:call-template>
                                                                    </xsl:for-each>
                                                                </xsl:otherwise>
                                                            </xsl:choose>

                                                            <xsl:if test="$varSenaryoName='1' and not($varVknComp='1')">
                                                                <tr align="left">
                                                                    <td align="left" style="width:469px; ">
                                                                        <span style="font-weight:bold; ">
                                                                            <br> </br>
                                                                            <xsl:text> Ödeme Yapacak Kurum </xsl:text>
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                                <tr align="left">
                                                                    <td>
                                                                        <xsl:text> VKN: </xsl:text>
                                                                        <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN']"/>
                                                                    </td>
                                                                </tr>
                                                                <tr align="left">
                                                                    <td>
                                                                        <xsl:text> Ünvan: </xsl:text>
                                                                        <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
                                                                    </td>
                                                                </tr>
                                                                <tr align="left">
                                                                    <td>
                                                                        <xsl:text> Adres: </xsl:text>
                                                                        <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"/>
                                                                        <xsl:text>/ </xsl:text>
                                                                        <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:Name"/>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>
                                                        </tbody>
                                                    </table>
                                                    <hr/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>

                                <td style="width: 30%; text-align: center;">
                                    <!-- SIGN_REF -->
                                </td>

                                <td style="width: 30%;">
                                    <table style="width:100%; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Özelleştirme No:</xsl:text>
                                                    </span>
                                                </td>
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:for-each select="n1:Invoice/cbc:CustomizationID">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr style="height:13px; ">
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Senaryo:</xsl:text>
                                                    </span>
                                                </td>
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:for-each select="n1:Invoice/cbc:ProfileID">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <xsl:if test="not(//n1:Invoice/cbc:ProfileID='EGIDERPUSULASI')">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Fatura Tipi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cbc:InvoiceTypeCode">
                                                            <xsl:apply-templates/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>

                                            <xsl:if test="//n1:Invoice/cbc:AccountingCost">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>İlave Fatura Tipi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cbc:AccountingCost">
                                                            <xsl:apply-templates/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <tr style="height:13px; ">
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:choose>
                                                        <xsl:when test="//n1:Invoice/cbc:ProfileID='EGIDERPUSULASI'">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Pusula No:</xsl:text>
                                                            </span>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Fatura No:</xsl:text>
                                                            </span>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:for-each select="n1:Invoice/cbc:ID">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr style="height:13px; ">
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:choose>
                                                        <xsl:when test="//n1:Invoice/cbc:ProfileID='EGIDERPUSULASI'">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Pusula Tarihi:</xsl:text>
                                                            </span>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Fatura Tarihi:</xsl:text>
                                                            </span>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td id="invoice-info-td" style="width: 50%;">
                                                    <xsl:for-each select="n1:Invoice/cbc:IssueDate">
                                                        <xsl:apply-templates select="."/>
                                                        <xsl:text> </xsl:text>
                                                        <xsl:value-of select="substring(../cbc:IssueTime,1,5)"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='MUKELLEF_KODU' or text()='MUKELLEF_ADI' or text()='DOSYA_NO']">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold;">
                                                            <xsl:if test="../cbc:DocumentTypeCode='MUKELLEF_KODU'">
                                                                <xsl:text>Mükellef Kodu:</xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="../cbc:DocumentTypeCode='MUKELLEF_ADI'">
                                                                <xsl:text>Mükellef Adı:</xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="../cbc:DocumentTypeCode='DOSYA_NO'">
                                                                <xsl:text>Dosya No:</xsl:text>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="../cbc:DocumentType"/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:if test="(//n1:Invoice/cbc:AccountingCost) and (//n1:Invoice/cac:InvoicePeriod)">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold;">
                                                            <xsl:text>Dönem Başlangıcı:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="//n1:Invoice/cac:InvoicePeriod">
                                                            <xsl:apply-templates select="cbc:StartDate"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold;">
                                                            <xsl:text>Dönem Bitişi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="//n1:Invoice/cac:InvoicePeriod">
                                                            <xsl:apply-templates select="cbc:EndDate"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:for-each select="n1:Invoice/cac:DespatchDocumentReference">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>İrsaliye No:</xsl:text>
                                                        </span>
                                                        <xsl:text> </xsl:text>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="cbc:ID"/>
                                                    </td>
                                                </tr>
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>İrsaliye Tarihi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="cbc:IssueDate">
                                                            <xsl:apply-templates select="."/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:if test="//n1:Invoice/cbc:paymentDueDate">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Son Ödeme Tarihi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cbc:paymentDueDate">
                                                            <xsl:apply-templates/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="//n1:Invoice/cac:OrderReference">
                                                <tr style="height:13px">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Sipariş No:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:ID">
                                                            <xsl:apply-templates/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
                                                <tr style="height:13px">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Sipariş Tarihi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:IssueDate">
                                                            <xsl:apply-templates select="."/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN' and text()='7350019759']">
                                                <tr style="height:13px">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Sipariş Sorumlusu:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="$varsiparissorumlusu"/>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:for-each select="n1:Invoice/cac:ReceiptDocumentReference">
                                                <tr style="height:13px; ">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Mal Kabul No:</xsl:text>
                                                        </span>
                                                        <xsl:text> </xsl:text>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="cbc:ID"/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each select="n1:Invoice/cac:TaxRepresentativeParty/cac:PartyIdentification/cbc:ID[@schemeID='ARACIKURUMVKN']">
                                                <tr>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Aracı Kurum VKN:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="."/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Aracı Kurum Unvan:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:value-of select="../../cac:PartyName/cbc:Name"/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <!--											<xsl:if	test="//n1:Invoice/cac:PaymentMeans/cbc:PaymentMeansCode">-->
                                            <!--												<tr style="height:13px">-->
                                            <!--													<td id="invoice-info-td" style="width: 50%;">-->
                                            <!--														<span style="font-weight:bold; ">-->
                                            <!--															<xsl:text>Ödeme Şekli:</xsl:text>-->
                                            <!--														</span>-->
                                            <!--													</td>-->
                                            <!--													<td id="invoice-info-td" style="width: 50%;">-->
                                            <!--														<xsl:for-each select="n1:Invoice/cac:PaymentMeans/cbc:PaymentMeansCode">-->
                                            <!--															<xsl:call-template name="PaymentMeansCode">-->
                                            <!--																<xsl:with-param name="PaymentMeansCodeType">-->
                                            <!--																	<xsl:value-of select="."/>-->
                                            <!--																</xsl:with-param>-->
                                            <!--															</xsl:call-template>-->
                                            <!--														</xsl:for-each>-->
                                            <!--													</td>-->
                                            <!--												</tr>-->
                                            <!--											</xsl:if>-->
                                            <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:PaymentDueDate">
                                                <tr style="height:13px">
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Ödeme Tarihi:</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td id="invoice-info-td" style="width: 50%;">
                                                        <xsl:for-each select="n1:Invoice/cac:PaymentMeans/cbc:PaymentDueDate">
                                                            <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>



                    <!-- ETTN SATIRI -->
                    <table style="width: 40%; margin-bottom: 5px;">
                        <tr>
                            <td style="width: 100%;">
                                <span style="font-weight:bold; ">
                                    <xsl:text>ETTN:</xsl:text>
                                </span>
                                 
                                <xsl:for-each select="n1:Invoice/cbc:UUID">
                                    <xsl:apply-templates/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </table>

                    <!-- URUNLER SATIRI (TABLOSU) -->
                    <table style="width: 100%; border-collapse: collapse; border-style: solid; border-width: 2px;">
                        <tbody>
                            <tr>
                                <td id="invoice-line-td" style="width:3%">
                                    <span style="font-weight:bold;">
                                        <xsl:text>Sıra No</xsl:text>
                                    </span>
                                </td>
                                <xsl:choose>
                                    <xsl:when test="$varItemCode &gt; 0">
                                        <td id="invoice-line-td" style="width:7%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Ürün Kodu</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN' and text()='7350019759']">
                                        <td id="invoice-line-td" style="width:7%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Sipariş Satır No</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:when>
                                </xsl:choose>

                                <xsl:if test="$varfaturatipi='SGK'">
                                    <td id="invoice-line-td" style="width:80%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Açıklama</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>
                                <xsl:if test="not($varfaturatipi='SGK')">
                                    <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                        <td id="invoice-line-td" style="width:20%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Mal Hizmet</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>

                                    <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                        <td id="invoice-line-td" style="width:10.6%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>İade Edilen Mal Hizmet</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>

                                    <td id="invoice-line-td" style="width:7.4%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Miktar</xsl:text>
                                        </span>
                                    </td>
                                    <xsl:if test="$varEtiketFiyati='1'">
                                        <td class="table-background table-header" id="invoice-line-td" style="width:10%; border-color: #c9c9c9">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Etiket Fiyatı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$varDepocuFiyati='1'">
                                        <td class="table-background table-header" id="invoice-line-td" style="width:9%; border-color: #c9c9c9">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Depocu Fiyatı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>

                                    <td class="table-background table-header" id="invoice-line-td" style="width:9%; border-color: #c9c9c9">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Birim Fiyat</xsl:text>
                                        </span>
                                    </td>
                                    <xsl:if test="$varEczaciKar='1'">
                                        <td class="table-background table-header" id="invoice-line-td" style="width:10%; border-color: #c9c9c9">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Eczacı Kâr Oranı.</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>

                                    <xsl:if test="$varKurumIskonto='1'">
                                        <td class="table-background table-header" id="invoice-line-td" style="width:10%; border-color: #c9c9c9">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Kurum İskontosu</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>

                                    <xsl:if test="$varVade='1'">
                                        <td class="table-background table-header" id="invoice-line-td" style="width:10%; border-color: #c9c9c9">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Vade Tarihi</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$varAllowanceRate &gt; 0">
                                        <td id="invoice-line-td" style="width:7%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>İskonto/ Arttırım Oranı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$varAllowanceAmount &gt; 0">
                                        <td id="invoice-line-td" style="width:9%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>İskonto/ Arttırım Tutarı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$varAllowanceReason &gt; 0">
                                        <td id="invoice-line-td" style="width:9%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>İskonto/ Arttırım Nedeni</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                        <td id="invoice-line-td" style="width:7%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>KDV Oranı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                        <td id="invoice-line-td" style="width:10%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>KDV Tutarı</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                        <td id="invoice-line-td" style="width:17%; ">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Diğer Vergiler</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$varLineExplanation &gt; 0">
                                        <td id="invoice-line-td" style="width:10.6%">
                                            <span style="font-weight:bold;">
                                                <xsl:text>Satır Açıklaması</xsl:text>
                                            </span>
                                        </td>
                                    </xsl:if>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>İade Edilen Mal Oranı (%)</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>İadeye Konu KDV Tutarı</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                    <td id="invoice-line-td" style="width:17%; ">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Diğer Vergiler</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>
                                <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Mal Hizmet Tutarı</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>İadeye Konu İşlem Bedeli</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Alıştaki Tevkifatsız KDV Tutarı</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:ProfileID='EARSIVFATURA' and //n1:Invoice/cbc:InvoiceTypeCode='ISTISNA'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>GTIP</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS' or /n1:Invoice/cbc:InvoiceTypeCode='HKSSATIS' or /n1:Invoice/cbc:InvoiceTypeCode='HKSKOMISYONCU'">
                                    <td id="invoice-line-td" style="width:5%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Künye Numarası</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS' and /n1:Invoice/cbc:InvoiceTypeCode='SATIS'">
                                    <td id="invoice-line-td" style="width:5%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Mal Sahibi VKN/TCKN</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:5%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Mal Sahibi Ad/Soyad</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='HKSSATIS'">
                                    <td id="invoice-line-td" style="width:5%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Mal Sahibi VKN/TCKN</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:5%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Mal Sahibi Ad/Soyad</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>

                                <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT' or //n1:Invoice/cbc:ProfileID='OZELFATURA'">
                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Teslim Şartı</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Eşya Kap Cinsi</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Kap No</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Kap Adet</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Teslim/Bedel Ödeme Yeri</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Gönderilme Şekli</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>GTİP</xsl:text>
                                        </span>
                                    </td>

                                    <td id="invoice-line-td" style="width:10.6%">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Byn. Edilen Kıymet Değeri</xsl:text>
                                        </span>
                                    </td>
                                </xsl:if>
                            </tr>

                            <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &gt;= 1">
                                <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </xsl:if>

                            <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &lt; 1">
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[1]">
                                        <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[1]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:if>
                        </tbody>
                    </table>
                </xsl:for-each>


                <table id="budgetContainerTable" table-layout="fixed" width="800px">
                    <tbody>
                        <tr>
                            <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='HKSKOMISYONCU' or //n1:Invoice/cbc:InvoiceTypeCode='KOMISYONCU'">
                                <td align="left" valign="top" width="300px">
                                    <table>
                                        <tbody>
                                            <xsl:for-each select="n1:Invoice/cac:AllowanceCharge">
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSKOMISYON'">
                                                    <tr align="left" border="0">
                                                        <td align="left" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Masraflar:</xsl:text>
                                                            </span>
                                                        </td>

                                                    </tr>
                                                    <tr align="left">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Komisyon - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSKOMISYONKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Komisyon KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSNAVLUN' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Navlun - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSNAVLUNKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Navlun KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSHAMMALIYE' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Hammaliye - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSHAMMALIYEKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Hammaliye KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSNAKLIYE' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Nakliye - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSNAKLIYEKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Nakliye KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSGVTEVKIFAT' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>G.V. Tevkifat - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSBAGKURTEVKIFAT' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Bağkur Tevkifat - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSRUSUM' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Rüsum - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSRUSUMKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Rüsum KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSTICBORSASI' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Ticaret Borsası - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSTICBORSASIKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Ticaret Borsası KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSMILLISAVUNMAFON' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Milli Savunma Fon - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSMSFONKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Milli Savunma Fon KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSDIGERMASRAFLAR' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Diğer Masraflar - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                                <xsl:if test="cbc:AllowanceChargeReason = 'HKSDIGERKDV' and not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <tr align="right">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Diğer KDV - %</xsl:text>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:Amount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                            <xsl:for-each select="cbc:MultiplierFactorNumeric">
                                                                <xsl:text> %</xsl:text>
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                            </xsl:for-each>

                                        </tbody>
                                    </table>
                                </td>
                            </xsl:if>
                            <td align="right" valign="top">
                                <table>
                                    <tbody>
                                        <xsl:if test="not($varfaturatipi='SGK' and $varoptik='medula')">
                                            <tr align="right">
                                                <td/>
                                                <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Mal Hizmet Toplam Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                </xsl:if>

                                                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>İadeye Konu İşlem Bedeli Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                </xsl:if>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                                                        <xsl:call-template name="Curr_Type"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                                            <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Teslim Bedeli</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                        <xsl:if test="not($varfaturatipi='SGK')">
                                            <tr align="right">
                                                <td/>
                                                <xsl:choose>
                                                    <xsl:when test="//n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator='true'">
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Toplam Arttırım - </xsl:text>
                                                                <xsl:for-each select="n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason">
                                                                    <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                            </span>
                                                        </td>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <td align="right" class="lineTableBudgetTd" width="200px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:if test="not($varoptik='medikal')">
                                                                    <xsl:text>Toplam İskonto</xsl:text>
                                                                </xsl:if>
                                                                <xsl:if test="$varoptik='medikal'">
                                                                    <xsl:text>Katılım Payı</xsl:text>
                                                                </xsl:if>
                                                            </span>
                                                        </td>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:if test="$varoptik='medikal' and not($varisitmekatilimpayi='')">
                                                        <xsl:value-of select="format-number(number($varisitmekatilimpayi), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </xsl:if>
                                                    <xsl:if test="not($varoptik='medikal' and not($varisitmekatilimpayi=''))">
                                                        <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                        </xsl:if>

                                        <xsl:if test="$varfaturatipi='SGK' and $varoptik='cezaeviEczanem'">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam İskonto</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <span>
                                                        <xsl:value-of select="format-number(number($variskonto), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>İlaç Farkı</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <span>
                                                        <xsl:value-of select="format-number(number($varilacfarki), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </span>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="$varfaturatipi='SGK' and $varoptik='optik'">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam Katılım Payı</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <span>
                                                        <xsl:value-of select="format-number(number($varkatilimpayi), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </span>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="$varfaturatipi='SGK' and $varoptik='medula'">
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varpsf='undefined' or $varpsf='' or $varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:value-of select="$varreceteadedi"/> Adet Reçete PSF Toplamı
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varpsf), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
												Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varpsf='undefined' or $varpsf='' or $varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Kamu Kurum İskontosu</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number((number($varpsf)- number($vartutar)), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:value-of select="$varreceteadedi"/> Adet Reçete Kamu Fiyatı Toplamı
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                                                                <xsl:call-template name="Curr_Type"/>
                                                            </xsl:for-each>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Eczane İskontosu</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <span>
                                                        <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </span>
                                                </td>
                                            </tr>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
												Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Hasta Katılım Payı(%10 - %20)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varkatilimpayi), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
												Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="210px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Vergiler Dahil Reçete Toplam Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number((number($vartutar) -(number($variskonto) + number($varkatilimpayi))), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
												Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="210px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Vergiler Hariç Reçete Toplam Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number((number($vartutar) -(number($variskonto) + number($varkatilimpayi) + number($varkdv8) + number($varkdv10) + number($varkdv18) + number($varkdv20))), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="not($varkdv8='undefined' or $varkdv8='')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>KDV (%8)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varkdv8), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="not($varkdv10='undefined' or $varkdv10='')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>KDV (%10)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varkdv10), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="not($varkdv18='undefined' or $varkdv18='')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>KDV (%18)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varkdv18), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <xsl:if test="not($varkdv20='undefined' or $varkdv20='')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>KDV (%20)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(number($varkdv20), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
												Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="not($varfaturatype='CETAS')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="220px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Vergiler Dahil Reçete Toplam Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number((number($vartutar) -(number($variskonto) + number($varkatilimpayi))), '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="210px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:choose>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:when test="$varfaturatype='CETAS'">
                                                                <xsl:text>Eczane Hizmet Bedeli KDV(%18) Hariç Tutarı</xsl:text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text>Eczane Hizmet Bedeli KDV Hariç Tutarı</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:choose>
                                                        <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                            Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                        <xsl:when test="$varfaturatype='CETAS'">
                                                            <xsl:value-of select="format-number((number($vareczanehizmetbedeli) - number($vareczanekdv18)), '###.##0,00', 'european')"/>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:value-of select="format-number((number($vareczanehizmetbedeli) - number($vareczanekdv18) - number($vareczanekdv20)), '###.##0,00', 'european')"/>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>
                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
											Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="$varfaturatype='CETAS'">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="210px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Eczane Hizmet Bedeli KDV(%20) Hariç Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                            Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                        <xsl:value-of select="format-number((number($vareczanehizmetbedeli20) - number($vareczanekdv20)), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </td>
                                                </tr>
                                            </xsl:if>

                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:choose>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
																Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:when test="$varfaturatype='CETAS'">
                                                                <xsl:text>Eczane Hizmet Bedeli KDV (%18)</xsl:text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text>KDV (%18)</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:value-of select="format-number(number($vareczanekdv18), '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:choose>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
																Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:when test="$varfaturatype='CETAS'">
                                                                <xsl:text>Eczane Hizmet Bedeli KDV (%20)</xsl:text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text>KDV (%20)</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:value-of select="format-number(number($vareczanekdv20), '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>

                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="210px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:choose>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
																Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:when test="$varfaturatype='CETAS'">
                                                                <xsl:text>Eczane Hizmet Bedeli KDV(%18) Dahil Tutarı</xsl:text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text>Eczane Hizmet Bedeli KDV Dahil Tutarı</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:value-of select="format-number(number($vareczanehizmetbedeli), '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>

                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
											Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                            <xsl:if test="$varfaturatype='CETAS'">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="210px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Eczane Hizmet Bedeli KDV(%20) Dahil Tutarı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <xsl:value-of select="format-number(number($vareczanehizmetbedeli20), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:if>

                                        <!-- KDV_TAXABLEAMOUNT_REF -->
                                        <!-- EXCHANGERATE_REF -->

                                        <xsl:if test="$varfaturatipi='SGK' and $varoptik='medikalIcmal'">
                                            <xsl:if test="string-length($varkatilimpayi)&gt;0 and not($varkatilimpayi=0)">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="211px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Katılım Payı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                        <xsl:value-of select="format-number(number($varkatilimpayi), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:if>

                                        <xsl:if test="not(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                            <xsl:if test="not($varfaturatipi='SGK' and $varoptik='medula')">
                                                <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                                                    <tr align="right">
                                                        <td/>
                                                        <td align="right" class="lineTableBudgetTd" width="211px">
                                                            <span style="font-weight:bold; ">
                                                                <xsl:text>Hesaplanan </xsl:text>
                                                                <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                                                                <xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
                                                                    <xsl:text>(%</xsl:text>
                                                                    <xsl:value-of select="cbc:Percent"/>
                                                                    <xsl:text>)</xsl:text>
                                                                </xsl:if>
                                                            </span>
                                                        </td>
                                                        <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                            <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                                                                <xsl:text> </xsl:text>
                                                                <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                                                                <xsl:if test="../../cbc:TaxAmount/@currencyID">
                                                                    <xsl:text> </xsl:text>
                                                                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
                                                                        <xsl:text>TL</xsl:text>
                                                                    </xsl:if>
                                                                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
                                                                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                                                                    </xsl:if>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </xsl:if>
                                        </xsl:if>
                                        <xsl:if test="(//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE')">
                                            <!--											<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">-->
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>İadeye Konu KDV </xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:text> </xsl:text>
                                                    <xsl:value-of select="format-number(sum(//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=0015]/cbc:TaxAmount), '###.##0,00', 'european')"/>
                                                    <xsl:if test="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID">
                                                        <xsl:text> </xsl:text>
                                                        <xsl:if test="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID = 'TRL' or n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID = 'TRY'">
                                                            <xsl:text>TL</xsl:text>
                                                        </xsl:if>
                                                        <xsl:if test="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID != 'TRL' and n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID != 'TRY'">
                                                            <xsl:value-of select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID"/>
                                                        </xsl:if>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <!--											</xsl:for-each>-->
                                        </xsl:if>
                                        <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                                            <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>KDV Matrahı</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <xsl:value-of select="format-number(sum(//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=0015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                                        <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
                                                            <xsl:text> </xsl:text>
                                                            <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRL' or //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'">
                                                                <xsl:text>TL</xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRY'">
                                                                <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"/>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </tr>
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Tevkifat Dahil Toplam Tutar</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Tevkifat Hariç Toplam Tutar</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                        <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Hesaplanan KDV Tevkifat</xsl:text>
                                                        <xsl:text>(%</xsl:text>
                                                        <xsl:value-of select="cbc:Percent"/>
                                                        <xsl:text>)</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                                                        <xsl:text> </xsl:text>
                                                        <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                                                        <xsl:if test="../../cbc:TaxAmount/@currencyID">
                                                            <xsl:text> </xsl:text>
                                                            <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
                                                                <xsl:text>TL</xsl:text>
                                                            </xsl:if>
                                                            <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
                                                                <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                        <xsl:if test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount)&gt;0">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
                                                        <xsl:text>TL</xsl:text>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                                                        <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
                                                        <xsl:text>TL</xsl:text>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                                                        <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                                                        <xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                                                    </xsl:if>
                                                    <xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='9015'">
                                                        <xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                                                        <xsl:text>TL</xsl:text>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                                                        <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="211px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                                                        <xsl:value-of select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                                    </xsl:if>
                                                    <xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='9015'">
                                                        <xsl:value-of select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                                                        <xsl:text>TL</xsl:text>
                                                    </xsl:if>
                                                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                                                        <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                        </xsl:if>

                                        <xsl:if test="not($varfaturatipi='SGK' and $varoptik='medula') and  $varExportCarriage &gt; 0">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Navlun</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(sum(//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount), '###.##0,00', 'european')"/>
                                                    <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID">
                                                        <xsl:text> </xsl:text>
                                                        <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID = 'TRL' or //n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID = 'TRY'">
                                                            <xsl:text>TL</xsl:text>
                                                        </xsl:if>
                                                        <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID != 'TRL' and //n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID != 'TRY'">
                                                            <xsl:value-of select="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:DeclaredForCarriageValueAmount/@currencyID"/>
                                                        </xsl:if>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="not($varfaturatipi='SGK' and $varoptik='medula') and  $varExportInsurance &gt; 0">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Sigorta</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(sum(//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount), '###.##0,00', 'european')"/>
                                                    <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID">
                                                        <xsl:text> </xsl:text>
                                                        <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID = 'TRL' or //n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID = 'TRY'">
                                                            <xsl:text>TL</xsl:text>
                                                        </xsl:if>
                                                        <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID != 'TRL' and //n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID != 'TRY'">
                                                            <xsl:value-of select="//n1:Invoice/cac:InvoiceLine/cac:Delivery/cac:Shipment/cbc:InsuranceValueAmount/@currencyID"/>
                                                        </xsl:if>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="not($varfaturatipi='SGK' and $varoptik='medula')">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                                                        <xsl:call-template name="Curr_Type"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:if>

                                        <xsl:if test="(//n1:Invoice/cbc:ProfileID='HKS' and //n1:Invoice/cbc:InvoiceTypeCode='KOMISYONCU') or (//n1:Invoice/cbc:ProfileID='EARSIVFATURA' and //n1:Invoice/cbc:InvoiceTypeCode='HKSKOMISYONCU')">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam Masraflar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount">
                                                        <xsl:call-template name="Curr_Type"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="not($varfaturatipi='SGK') ">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Ödenecek Tutar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                                        <xsl:call-template name="Curr_Type"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="n1:Invoice/cac:Delivery/cac:Shipment/cbc:DeclaredCustomsValueAmount">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam Byn. Edl. Kıymet Değeri</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:call-template name="Curr_Type"/>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                        <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                                            <xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Hesaplanan </xsl:text>
                                                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                                                            <xsl:text>(%</xsl:text>
                                                            <xsl:value-of select="cbc:Percent"/>
                                                            <xsl:text>) (TL)</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                        <span>
                                                            <xsl:value-of select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                                            <xsl:text> TL</xsl:text>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                        <xsl:if test="($varfaturatipi='SGK' and not($varoptik='medula'))">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam Ödenecek Tutar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                                        <xsl:call-template name="Curr_Type"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="($varfaturatipi='SGK' and $varoptik='medula')">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>KDV Hariç Ödenecek Tutar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <span>
                                                        <xsl:value-of select="format-number(number(n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount) - (number($varkdv8) + number($varkdv10) + number($varkdv18) + number($varkdv20) + number($vareczanekdv18)+ number($vareczanekdv20)), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>KDV(%8 + %10 + %18 + %20)</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <span>
                                                        <xsl:value-of select="format-number((number($varkdv8) + number($varkdv10) + number($varkdv18) + number($varkdv20) + number($vareczanekdv18) + number($vareczanekdv20)), '###.##0,00', 'european')"/>
                                                        <xsl:text> TL</xsl:text>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Toplam Ödenecek Tutar</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </span>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Mal Hizmet Toplam Tutarı(TL)</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:81px; ">
                                                    <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Vergiler Dahil Toplam Tutar(TL)</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>
                                            <xsl:if test="not($varfaturatipi='SGK')">
                                                <tr align="right">
                                                    <td/>
                                                    <td align="right" class="lineTableBudgetTd" width="200px">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                        <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                                                            <xsl:call-template name="Curr_Type"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            <tr align="right">
                                                <td/>
                                                <td align="right" class="lineTableBudgetTd" width="200px">
                                                    <span style="font-weight:bold; ">
                                                        <xsl:text>Ödenecek Tutar(TL)</xsl:text>
                                                    </span>
                                                </td>
                                                <td align="right" class="lineTableBudgetTd" style="width:82px; ">
                                                    <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                                    <xsl:text> TL</xsl:text>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br/>
                <xsl:if test="//n1:Invoice/cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentTypeCode[text()='İADE' or text()='IADE']">
                    <table id="lineTable" width="800">
                        <thead>
                            <tr>
                                <td align="left">
                                    <span align="center" style="font-weight:bold; ">     İadeye Konu Olan Faturalar</span>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr align="left" class="lineTableTr">
                                <td class="lineTableTd">
                                    <span align="center" style="font-weight:bold; ">     Fatura No</span>
                                </td>
                                <td class="lineTableTd">
                                    <span align="center" style="font-weight:bold; ">     Tarih</span>
                                </td>
                            </tr>
                            <xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentTypeCode[text()='İADE' or text()='IADE']">
                                <tr align="left" class="lineTableTr">
                                    <td class="lineTableTd">     
                                        <xsl:value-of select="../cbc:ID"/>
                                    </td>
                                    <td class="lineTableTd">     
                                        <xsl:for-each select="../cbc:IssueDate">
                                            <xsl:apply-templates select="."/>
                                        </xsl:for-each>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </xsl:if>
                <br/>
                <xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode='OKCBF'">
                    <table border="1" id="lineTable" width="800">
                        <thead>
                            <tr>
                                <th colspan="6">ÖKC Bilgileri</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="okcbfHeadTr" style="font-weight:bold;">
                                <td style="width:20%">
                                    <xsl:text>Fiş Numarası</xsl:text>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:text>Fiş Tarihi</xsl:text>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:text>Fiş Saati</xsl:text>
                                </td>
                                <td align="center" style="width:40%">
                                    <xsl:text>Fiş Tipi</xsl:text>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:text>Z Rapor No</xsl:text>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:text>ÖKC Seri No</xsl:text>
                                </td>
                            </tr>
                        </tbody>
                        <xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='OKCBF']">
                            <tr>
                                <td style="width:20%">
                                    <xsl:value-of select="../cbc:ID"/>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:value-of select="../cbc:IssueDate"/>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:value-of select="substring(../cac:ValidityPeriod/cbc:StartTime,1,5)"/>
                                </td>
                                <td align="center" style="width:40%">
                                    <xsl:choose>
                                        <xsl:when test="../cbc:DocumentDescription='AVANS'">
                                            <xsl:text>Ön Tahsilat(Avans) Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='YEMEK_FIS'">
                                            <xsl:text>Yemek Fişi/Kartı ile Yapılan Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-FATURA'">
                                            <xsl:text>E-Fatura Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-FATURA_IRSALIYE'">
                                            <xsl:text>İrsaliye Yerine Geçen E-Fatura Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-ARSIV'">
                                            <xsl:text>E-Arşiv Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-ARSIV_IRSALIYE'">
                                            <xsl:text>İrsaliye Yerine Geçen E-Arşiv Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA'">
                                            <xsl:text>Faturalı Satış Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='OTOPARK'">
                                            <xsl:text>Otopark Giriş Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT'">
                                            <xsl:text>Fatura Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT_KOMISYONLU'">
                                            <xsl:text>Komisyonlu Fatura Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text> </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:value-of select="../cac:Attachment/cac:ExternalReference/cbc:URI"/>
                                </td>
                                <td align="center" style="width:10%">
                                    <xsl:value-of select="../cac:IssuerParty/cbc:EndpointID"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br/>
                </xsl:if>


                <table id="notesTable" style="width: 800px;">
                    <tbody>
                        <xsl:if test="($varfaturatipi='SGK' and $varoptik='medula')">
                            <tr>
                                <td style="width: 100%;">
                                    <table style="margin-top: 10px; margin-left: 10px;">
                                        <tbody>
                                            <tr>
                                                <td style="width: 25%; vertical-align: top;">
                                                    <table style="width: 100%;">
                                                        <tbody>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaasdanilackatilimpayi='null' or $varmaasdanilackatilimpayi='' or $vareldenmuayenekatilimpayi='' or $vareldenrecetekatilimpayi='' or $varfaturatype='CETAS') or $varmaasdanilackatilimpayi='null'">
                                                                <tr>
                                                                    <td style="width: 50%; text-decoration: underline; font-weight: bold;">
                                                                        <xsl:text>Elden Tahsil Edilen</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaasdanilackatilimpayi='null' or $varmaasdanilackatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>İlaç Kat. Payı(Elden):</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($vareldenilackatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($vareldenmuayenekatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>Muayene Kat. Payı(Elden):</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($vareldenmuayenekatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($vareldenrecetekatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>Reçete Kat. Payı(Elden):</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($vareldenrecetekatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <xsl:if test="$varmaasdanilackatilimpayi='null'">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 60%;">
                                                                        <xsl:text>İlaç Kat. Payı(Elden + Maaş):</xsl:text>
                                                                    </td>

                                                                    <td style="width: 40%;">
                                                                        <xsl:value-of select="format-number(number($vareldenilackatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>


                                                        </tbody>
                                                    </table>
                                                </td>

                                                <td style="width: 25%; vertical-align: top;">
                                                    <table style="width: 100%">
                                                        <tbody>
                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaasdanilackatilimpayi='null' or $varmaasdanilackatilimpayi='' or $varmaasmuayenekatilimpayi='' or $varmaastanrecetekatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr>
                                                                    <td style="width: 50%; text-decoration: underline; font-weight: bold;">
                                                                        <xsl:text>Maaştan Kesilen</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaasdanilackatilimpayi='null' or $varmaasdanilackatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>İlaç Kat. Payı(Maaş)</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($varmaasdanilackatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaasmuayenekatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>Muayene Kat. Payı(Maaş)</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($varmaasmuayenekatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>

                                                            <!--TEBEOS Cezaevi faturası için sgk şeklinde bir tasarım istermiştir ona göre düzenleme yapılmıştır.
                                                                Resources altına oluşturdukları xml atılacaktır. Değişiklik yaparken o xmle de görede kontrol sağlanmalıdır.-->
                                                            <xsl:if test="not($varmaastanrecetekatilimpayi='' or $varfaturatype='CETAS')">
                                                                <tr style="line-height: 14px;">
                                                                    <td style="width: 50%;">
                                                                        <xsl:text>Reçete Kat. Payı(Maaş):</xsl:text>
                                                                    </td>

                                                                    <td style="width: 50%;">
                                                                        <xsl:value-of select="format-number(number($varmaastanrecetekatilimpayi), '###.##0,00', 'european')"/>
                                                                        <xsl:text> TL</xsl:text>
                                                                    </td>
                                                                </tr>
                                                            </xsl:if>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </xsl:if>
                        <tr align="left">
                            <td height="100" id="notesTableTd" style="width: 80%">
                                <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                                    <xsl:if test="(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015' or ../../cbc:InvoiceTypeCode='OZELMATRAH') and cac:TaxCategory/cbc:TaxExemptionReason">
                                        <b>      Vergi İstisna Muafiyet Sebebi: </b>
                                        <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                                        <br/>
                                    </xsl:if>
                                    <xsl:if test="starts-with(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode,'007') and cac:TaxCategory/cbc:TaxExemptionReason">
                                        <b>      ÖTV İstisna Muafiyet Sebebi: </b>
                                        <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                                        <br/>
                                    </xsl:if>
                                </xsl:for-each>
                                <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                                    <b>      Tevkifat Sebebi: </b>
                                    <xsl:value-of select="cbc:TaxTypeCode"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="cbc:Name"/>
                                    <br/>
                                </xsl:for-each>

                                <!-- NOTE_REF -->

                                <xsl:for-each select="//n1:Invoice/cbc:Note">
                                    <xsl:if test="not(starts-with(.,'SGK_')) and not(starts-with(.,'FATURATIPI:SGK')) and not(starts-with(.,'SS:')) and not(starts-with(.,'FATURA_TYPE:CETAS'))">
                                        <b>      Not: </b>
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </xsl:if>
                                </xsl:for-each>
                                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                                    <xsl:if test="cbc:ID='INTERNET_SATIS'">
                                        <b>      Not: </b>
                                        <xsl:text>Bu satış internet üzerinden yapılmıştır.</xsl:text>
                                        <br/>

                                        <b>      Ödeme Şekli: </b>
                                        <xsl:value-of select="cbc:DocumentType"/>
                                        <br/>

                                        <b>      Satışın Yapıldığı Web Adresi: </b>
                                        <xsl:value-of select="cac:IssuerParty/cbc:WebsiteURI"/>
                                        <br/>
                                        <b>      Ödeme Tarihi: </b>
                                        <xsl:value-of select="cbc:IssueDate"/>
                                        <br/>
                                    </xsl:if>
                                </xsl:for-each>
                                <xsl:if test="//n1:Invoice/cac:Delivery">
                                    <xsl:if test="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:PartyIdentification/cbc:ID[@schemeID='VKN']">
                                        <b>      Taşıyıcı Unvan: </b>
                                        <xsl:value-of select="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:PartyName/cbc:Name"/>
                                        <br/>
                                    </xsl:if>
                                    <xsl:if test="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:PartyIdentification/cbc:ID[@schemeID='TCKN']">
                                        <b>      Taşıyıcı Ad-Soyad: </b>
                                        <xsl:value-of select="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:Person/cbc:FirstName"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:Person/cbc:FamilyName"/>
                                        <br/>
                                    </xsl:if>
                                    <b>      Taşıyıcı TCKN/VKN: </b>
                                    <xsl:value-of select="//n1:Invoice/cac:Delivery/cac:CarrierParty/cac:PartyIdentification/cbc:ID"/>
                                    <br/>
                                    <b>      Gönderim Tarihi: </b>
                                    <xsl:value-of select="//n1:Invoice/cac:Delivery/cbc:ActualDeliveryDate"/>
                                    <br/>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
                                    <b>      Ödeme Notu: </b>
                                    <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
                                    <br/>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
                                    <b>      Hesap Açıklaması: </b>
                                    <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
                                    <br/>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
                                    <b>      Ödeme Koşulu: </b>
                                    <xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
                                    <br/>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE']='TAXFREE' and //n1:Invoice/cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReasonCode">
                                    <br/>
                                    <b>      VAT OFF - NO CASH REFUND </b>
                                </xsl:if>
                            </td>
                            <td style="width: 20%">

                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- ORDER-REFUND -->
                <table border="1" cellpadding="1" cellspacing="1" style="width: 800px;">
                    <tbody><tr>
                        <td style="width: 239px;">
                            <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center;">    Garanti Bankası - Bilkent Şube</span>
                        </td>
                        <td style="width: 450px;">
                            <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center; background-color: rgb(255, 255, 255);">    IBAN: TR94 0006 2000 3930 0006 2974 08</span>
                        </td>
                    </tr>
                        <tr>
                            <td style="width: 239px;">
                                <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center;">    Albaraka - Çukurambar Şube</span>
                            </td>
                            <td style="width: 450px;">
                                <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center; background-color: rgb(255, 255, 255);">    IBAN: TR92 0020 3000 0776 9898 0000 01</span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 239px;">
                                <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center;">    QNB Finansbank - Çetin Emeç Şube</span>
                            </td>
                            <td style="width: 450px;">
                                <span style="color: rgb(68, 68, 68); font-family: verdana, geneva, sans-serif; font-size: 10px; line-height: 20.82px; text-align: center; background-color: rgb(255, 255, 255);">    IBAN: TR03 0011 1000 0000 0104 3981 59</span>
                            </td>
                        </tr></tbody>
                </table>

                <div id="qrvalue" style="visibility: hidden; height: 20px;width: 20px; ; display:none">
                    {"vkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN' or @schemeID='VKN']"/>",
                    "avkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN' or @schemeID='VKN']"/>",
                    "senaryo":"<xsl:value-of select="n1:Invoice/cbc:ProfileID"/>",
                    "tip":"<xsl:value-of select="n1:Invoice/cbc:InvoiceTypeCode"/>",
                    "tarih":"<xsl:value-of select="n1:Invoice/cbc:IssueDate"/>",
                    "no":"<xsl:value-of select="n1:Invoice/cbc:ID"/>",
                    "ettn":"<xsl:value-of select="n1:Invoice/cbc:UUID"/>",
                    "parabirimi":"<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>",
                    "malhizmettoplam":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount"/>",<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
                    "kdvmatrah(<xsl:value-of select="cbc:Percent"/>)":"<xsl:value-of select="cbc:TaxableAmount"/>",</xsl:for-each><xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
                    "hesaplanankdv(<xsl:value-of select="cbc:Percent"/>)":"<xsl:value-of select="cbc:TaxAmount"/>",</xsl:for-each>
                    "vergidahil":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount"/>",
                    "odenecek":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>"}
                </div>
                <script type="text/javascript">
                    var qrcode = new QRCode(document.getElementById("qrcode"), {
                    width : 170,
                    height : 170,
                    correctLevel : QRCode.CorrectLevel.L
                    });

                    function makeCode (msg) {
                    qrcode.makeCode(msg);
                    }

                    makeCode(document.getElementById("qrvalue").innerHTML.replace(/\s/g, ''));
                </script>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//n1:Invoice/cac:InvoiceLine">
        <tr class="lineTableTr">
            <td class="lineTableTd">
                <xsl:text> </xsl:text>
                <xsl:value-of select="./cbc:ID"/>
            </td>
            <xsl:choose>
                <xsl:when test="$varItemCode &gt; 0">
                    <td class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN' and text()='7350019759']">
                    <td class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="./cbc:Note">
                            <xsl:if test="contains(.,'#SS_Satir_NO=')">
                                <xsl:value-of select="normalize-space(substring-after(substring(.,12),'='))"/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </xsl:when>
            </xsl:choose>
            <td class="lineTableTd">
                <xsl:text> </xsl:text>
                <xsl:value-of select="./cac:Item/cbc:Name"/>
            </td>

            <xsl:if test="not($varfaturatipi='SGK')">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,####', 'european')"/>
                    <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
                        <xsl:for-each select="./cbc:InvoicedQuantity">
                            <xsl:text> </xsl:text>
                            <xsl:choose>
                                <xsl:when test="@unitCode = 'BX'">
                                    <xsl:text>Kutu</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'TNE'">
                                    <xsl:text>ton</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'BX'">
                                    <xsl:text>Kutu</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'LTR'">
                                    <xsl:text>lt</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'C62'">
                                    <xsl:text>Adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'TN'">
                                    <xsl:text>Teneke</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KGM'">
                                    <xsl:text>kg</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KJO'">
                                    <xsl:text>kJ</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'GRM'">
                                    <xsl:text>g</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MGM'">
                                    <xsl:text>mg</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'NT'">
                                    <xsl:text>Net Ton</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'GT'">
                                    <xsl:text>Gross Ton</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MTR'">
                                    <xsl:text>m</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MMT'">
                                    <xsl:text>mm</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KTM'">
                                    <xsl:text>km</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MLT'">
                                    <xsl:text>ml</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MMQ'">
                                    <xsl:text>mm3</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CLT'">
                                    <xsl:text>cl</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CMK'">
                                    <xsl:text>cm2</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CMQ'">
                                    <xsl:text>cm3</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CMT'">
                                    <xsl:text>cm</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MTK'">
                                    <xsl:text>m2</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MTQ'">
                                    <xsl:text>m3</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DAY'">
                                    <xsl:text>Gün</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MON'">
                                    <xsl:text>Ay</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'PA'">
                                    <xsl:text>Paket</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KWH'">
                                    <xsl:text>KWH</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'ANN'">
                                    <xsl:text>Yıl</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'HUR'">
                                    <xsl:text>Saat</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D61'">
                                    <xsl:text>Dakika</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D62'">
                                    <xsl:text>Saniye</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CCT'">
                                    <xsl:text>Ton baş.taşıma kap.</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D30'">
                                    <xsl:text>Brüt kalori</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D40'">
                                    <xsl:text>1000 lt</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'LPA'">
                                    <xsl:text>saf alkol lt</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'B32'">
                                    <xsl:text>kg.m2</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'NCL'">
                                    <xsl:text>hücre adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'PR'">
                                    <xsl:text>Çift</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'R9'">
                                    <xsl:text>1000 m3</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'SET'">
                                    <xsl:text>Set</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'T3'">
                                    <xsl:text>1000 adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'PK'">
                                    <xsl:text>Koli</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CR'">
                                    <xsl:text>Kasa/Sandık</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'BG'">
                                    <xsl:text>Poşet/Torba</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'GFI'">
                                    <xsl:text>Fıssıle İzotop Gramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CEN'">
                                    <xsl:text>Yüz Adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KPO'">
                                    <xsl:text>Kilogram Potasyum Oksit</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MND'">
                                    <xsl:text>Kurutulmuş Net Ağırlıklı Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = '3I'">
                                    <xsl:text>Kilogram-Adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KFO'">
                                    <xsl:text>Difosfor Pentaoksit Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KHY'">
                                    <xsl:text>Hidrojen Peroksik Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KMA'">
                                    <xsl:text>Metil Aminlerin Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KNI'">
                                    <xsl:text>Azotun Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KPH'">
                                    <xsl:text>Kilogram Potasyum Hidroksit</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KSD'">
                                    <xsl:text>%90 Kuru Ürün Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KSH'">
                                    <xsl:text>Sodyum Hidroksit Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KUR'">
                                    <xsl:text>Uranyum Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D32'">
                                    <xsl:text>Terawatt Saat</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'GWH'">
                                    <xsl:text>Gigawatt Saat</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'MWH'">
                                    <xsl:text>Megawatt Saat (1000 kW.h)</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KWT'">
                                    <xsl:text>Kilowatt</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DMK'">
                                    <xsl:text>Desimetre Kare</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CTM'">
                                    <xsl:text>Karat</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'SM3'">
                                    <xsl:text>Standart Metreküp</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CT'">
                                    <xsl:text>Karton</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DMT'">
                                    <xsl:text>Desimetre</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DMQ'">
                                    <xsl:text>Desimetre Küp</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KTN'">
                                    <xsl:text>Kiloton</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D93'">
                                    <xsl:text>Doz</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'LM'">
                                    <xsl:text>Metre Tül</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'BO'">
                                    <xsl:text>Şişe</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'H80'">
                                    <xsl:text>Rack Unit</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'RA'">
                                    <xsl:text>Rack</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'TU'">
                                    <xsl:text>Tüp</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'BLL'">
                                    <xsl:text>Fıçı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'TC'">
                                    <xsl:text>Kamyon</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'PG'">
                                    <xsl:text>Plaka</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DPC'">
                                    <xsl:text>Düzüne</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'LR'">
                                    <xsl:text>Tabaka</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'JOU'">
                                    <xsl:text>Vardiya</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'DRL'">
                                    <xsl:text>Rulo</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'ACR'">
                                    <xsl:text>Dönüm</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'E53'">
                                    <xsl:text>Test</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'H82'">
                                    <xsl:text>Puan</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'SQR'">
                                    <xsl:text>Ayak</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'AYR'">
                                    <xsl:text>Altın Ayarı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'BAS'">
                                    <xsl:text>Bas</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'CPR'">
                                    <xsl:text>Adet-Çift</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'GMS'">
                                    <xsl:text>Gümüş</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'H62'">
                                    <xsl:text>Yüz Adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KHO'">
                                    <xsl:text>Hidroje Peroksit Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KH6'">
                                    <xsl:text>Kilogram-Baş</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KOH'">
                                    <xsl:text>Kilogram Potasyum Hidroksit</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'KPR'">
                                    <xsl:text>Kilogram-Çift</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'K20'">
                                    <xsl:text>Kilogram Potasyum Oksit</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'K58'">
                                    <xsl:text>Kurutulmuş Net Ağırlıklı Kilogramı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'K62'">
                                    <xsl:text>Kilogram-Adet</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'NCR'">
                                    <xsl:text>Karat</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'OMV'">
                                    <xsl:text>OTV Maktu Vergi</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'OTB'">
                                    <xsl:text>OTV Birim Fiyatı</xsl:text>
                                </xsl:when>
                                <xsl:when test="@unitCode = 'D63'">
                                    <xsl:text>Cilt</xsl:text>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:if>
                </td>
                <xsl:if test="$varEtiketFiyati='1'">
                    <td align="right" class="lineTableTd">
                        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cbc:Note">
                            <xsl:if test="contains(.,'ETF:') or contains(.,'ESF:')">
                                <xsl:value-of select="substring-after(substring(.,4),':')"/>
                                <xsl:text> </xsl:text>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or //n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                                    <xsl:text>TL</xsl:text>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and //n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                                    <xsl:value-of select="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/>
                                </xsl:if>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
                    <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
                        <xsl:text> </xsl:text>
                        <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                            <xsl:text>TL</xsl:text>
                        </xsl:if>
                        <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                            <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
                        </xsl:if>
                    </xsl:if>
                </td>
                <xsl:if test="$varDepocuFiyati='1'">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cbc:Note">
                            <xsl:if test="contains(.,'DSF:')">
                                <br/>
                                <xsl:value-of select="substring-after(substring(.,4),':')"/>
                                <xsl:text> </xsl:text>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or //n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                                    <xsl:text>TL</xsl:text>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and .//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                                    <xsl:value-of select="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/>
                                </xsl:if>
                            </xsl:if>
                        </xsl:for-each>
                        <br/>
                    </td>
                </xsl:if>
                <xsl:if test="$varEczaciKar='1'">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cbc:Note">
                            <xsl:if test="contains(.,'ECK:') or contains(.,'EKO:')">
                                <xsl:text>%</xsl:text>
                                <xsl:value-of select="substring-after(substring(.,4),':')"/>
                                <xsl:text> </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <xsl:if test="$varKurumIskonto='1'">
                    <td align="right" class="lineTableTd">
                        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cbc:Note">
                            <xsl:if test="contains(.,'KRI:')">
                                <xsl:value-of select="substring-after(substring(.,4),':')"/>
                                <xsl:text> </xsl:text>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or //n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                                    <xsl:text>TL</xsl:text>
                                </xsl:if>
                                <xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and //n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                                    <xsl:value-of select="//n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/>
                                </xsl:if>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <xsl:if test="$varVade='1'">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cbc:Note">
                            <xsl:if test="contains(.,'VAD:')">
                                <xsl:value-of select="substring-after(substring(.,4),':')"/>
                                <xsl:text> </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                        <br/>
                    </td>
                </xsl:if>
                <xsl:if test="$varAllowanceRate &gt; 0">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
                            <xsl:choose>
                                <xsl:when test="../cbc:ChargeIndicator='true'">
                                    <xsl:text>(+) %</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>(-) %</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:value-of select="format-number(. * 100, '###.##0,00', 'european')"/>
                            <br/>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <xsl:if test="$varAllowanceAmount &gt; 0">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="cac:AllowanceCharge/cbc:Amount">
                            <xsl:call-template name="Curr_Type"/>
                            <br/>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <xsl:if test="$varAllowanceReason &gt; 0">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="cac:AllowanceCharge/cbc:AllowanceChargeReason">

                            <xsl:choose>
                                <xsl:when test="../cbc:ChargeIndicator='true'">
                                    <xsl:text>Arttırım - </xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>İskonto - </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:apply-templates/>
                            <br/>
                        </xsl:for-each>
                    </td>
                </xsl:if>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:if test="cbc:TaxTypeCode='0015' ">
                            <xsl:text> </xsl:text>
                            <xsl:if test="../../cbc:Percent">
                                <xsl:text> %</xsl:text>
                                <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                            </xsl:if>
                        </xsl:if>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:if test="cbc:TaxTypeCode='0015' ">
                            <xsl:text> </xsl:text>
                            <xsl:for-each select="../../cbc:TaxAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd" style="font-size: xx-small">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:if test="cbc:TaxTypeCode!='0015' ">
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="cbc:Name"/>
                            <xsl:if test="../../cbc:Percent">
                                <xsl:text> (%</xsl:text>
                                <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                                <xsl:text>)=</xsl:text>
                            </xsl:if>
                            <xsl:for-each select="../../cbc:TaxAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:text>KDV TEVKİFAT </xsl:text>
                        <xsl:if test="../../cbc:Percent">
                            <xsl:text> (%</xsl:text>
                            <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                            <xsl:text>)=</xsl:text>
                        </xsl:if>
                        <xsl:for-each select="../../cbc:TaxAmount">
                            <xsl:call-template name="Curr_Type"/>
                            <xsl:text>
</xsl:text>
                        </xsl:for-each>
                    </xsl:for-each>
                    <xsl:for-each select="./cbc:Note">
                        <xsl:if test="contains(.,'AVANS MAHSUBU')">
                            <br/>
                            <xsl:value-of select="."/>
                        </xsl:if>
                        <xsl:if test="contains(.,'NAKİT TEMİNAT KESİNTİSİ')">
                            <br/>
                            <xsl:value-of select="."/>
                        </xsl:if>
                    </xsl:for-each>
                </td>
                <xsl:if test="$varLineExplanation &gt; 0">
                    <td align="right" class="lineTableTd">
                        <xsl:text> </xsl:text>
                        <xsl:for-each select="cbc:Note">
                            <xsl:if test="not(contains(.,'#SS_Satir_NO=')) and not(contains(.,'AVANS MAHSUBU')) and not(contains(.,'NAKİT TEMİNAT KESİNTİSİ'))       and not(contains(.,'ECK:')) and not(contains(.,'ETF:')) and not(contains(.,'KRI:')) and not(contains(.,'VAD:')) and not(contains(.,'DSF:'))">
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates/>
                            </xsl:if>

                        </xsl:for-each>
                    </td>
                </xsl:if>
            </xsl:if>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
                <xsl:for-each select="cbc:LineExtensionAmount">
                    <xsl:call-template name="Curr_Type"/>
                </xsl:for-each>
            </td>
            <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFATIADE'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount">
                        <xsl:call-template name="Curr_Type"/>
                    </xsl:for-each>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='EARSIVFATURA' and //n1:Invoice/cbc:InvoiceTypeCode='ISTISNA'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="cac:Delivery/cac:Shipment/cac:GoodsItem/cbc:RequiredCustomsID"/>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS' or /n1:Invoice/cbc:InvoiceTypeCode='HKSSATIS' or /n1:Invoice/cbc:InvoiceTypeCode='HKSKOMISYONCU'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Item/cac:AdditionalItemIdentification/cbc:ID[@schemeID='KUNYENO']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS' and /n1:Invoice/cbc:InvoiceTypeCode='SATIS'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Item/cac:AdditionalItemIdentification/cbc:ID[@schemeID='MALSAHIBIVKNTCKN']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Item/cac:AdditionalItemIdentification/cbc:ID[@schemeID='MALSAHIBIADSOYADUNVAN']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='HKSSATIS'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Item/cac:AdditionalItemIdentification/cbc:ID[@schemeID='MALSAHIBIVKNTCKN']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Item/cac:AdditionalItemIdentification/cbc:ID[@schemeID='MALSAHIBIADSOYADUNVAN']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT' or //n1:Invoice/cbc:ProfileID='OZELFATURA'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:DeliveryTerms/cbc:ID[@schemeID='INCOTERMS']">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:PackagingTypeCode">
                        <xsl:text> </xsl:text>
                        <xsl:call-template name="Packaging">
                            <xsl:with-param name="PackagingType">
                                <xsl:value-of select="."/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:ID">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="format-number(cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:Quantity, '###.##0,00', 'european')"/>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:DeliveryAddress">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:ShipmentStage/cbc:TransportModeCode">
                        <xsl:text> </xsl:text>
                        <xsl:call-template name="TransportMode">
                            <xsl:with-param name="TransportModeType">
                                <xsl:value-of select="."/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:GoodsItem/cbc:RequiredCustomsID">
                        <xsl:text> </xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cbc:DeclaredCustomsValueAmount">
                        <xsl:call-template name="Curr_Type"/>
                    </xsl:for-each>
                </td>
            </xsl:if>
        </tr>
    </xsl:template>
    <xsl:template match="//cbc:IssueDate">
        <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
    </xsl:template>
    <xsl:template match="//cbc:StartDate">
        <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
    </xsl:template>
    <xsl:template match="//cbc:EndDate">
        <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
    </xsl:template>
    <xsl:template match="//n1:Invoice">
        <tr class="lineTableTr">
            <td class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <td align="right" class="lineTableTd">
                <xsl:text> </xsl:text>
            </td>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='HKS' and /n1:Invoice/cbc:InvoiceTypeCode='SATIS'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
            </xsl:if>
            <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT' or //n1:Invoice/cbc:ProfileID='OZELFATURA'">
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
                <td align="right" class="lineTableTd">
                    <xsl:text> </xsl:text>
                </td>
            </xsl:if>
        </tr>
    </xsl:template>
    <xsl:template name="Party_Title">
        <xsl:param name="PartyType"/>
        <td align="left" style="width:469px; ">
            <xsl:if test="cac:PartyName">
                <xsl:value-of select="cac:PartyName/cbc:Name"/>
                <br/>
            </xsl:if>
            <xsl:if test="cac:PartyLegalEntity">
                <xsl:text>Vergi No:</xsl:text>
                <xsl:value-of select="cac:PartyLegalEntity/cbc:CompanyID"/>
                <br/>
            </xsl:if>
            <xsl:for-each select="cac:Person">
                <xsl:for-each select="cbc:Title">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:FirstName">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:MiddleName">
                    <xsl:apply-templates/>
                    <xsl:text>  </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:FamilyName">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:NameSuffix">
                    <xsl:apply-templates/>
                </xsl:for-each>
                <xsl:if test="$PartyType='TAXFREE'">
                    <br/>
                    <xsl:text>Pasaport No: </xsl:text>
                    <xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
                    <br/>
                    <xsl:text>Ülkesi: </xsl:text>
                    <xsl:for-each select="cbc:NationalityID">
                        <xsl:call-template name="Country">
                            <xsl:with-param name="CountryType">
                                <xsl:value-of select="."/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
    <xsl:template name="Party_Adress">
        <xsl:param name="PartyType"/>
        <td align="left" style="width:469px; ">
            <xsl:for-each select="cac:PostalAddress">
                <xsl:for-each select="cbc:StreetName">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:BuildingName">
                    <xsl:apply-templates/>
                </xsl:for-each>
                <xsl:for-each select="cbc:BuildingNumber">
                    <xsl:text> No:</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <br/>
                <xsl:for-each select="cbc:Room">
                    <xsl:text>Kapı No:</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <br/>
                <xsl:for-each select="cbc:PostalZone">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:CitySubdivisionName">
                    <xsl:apply-templates/>
                    <xsl:text>/ </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:CityName">
                    <xsl:apply-templates/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cac:Country/cbc:Name">
                    <br/>
                    <xsl:apply-templates/>
                    <br/>
                </xsl:for-each>
            </xsl:for-each>
        </td>
    </xsl:template>
    <xsl:template name="TransportMode">
        <xsl:param name="TransportModeType"/>
        <xsl:choose>
            <xsl:when test="$TransportModeType=1">Denizyolu</xsl:when>
            <xsl:when test="$TransportModeType=2">Demiryolu</xsl:when>
            <xsl:when test="$TransportModeType=3">Karayolu</xsl:when>
            <xsl:when test="$TransportModeType=4">Havayolu</xsl:when>
            <xsl:when test="$TransportModeType=5">Posta</xsl:when>
            <xsl:when test="$TransportModeType=6">Çok araçlı</xsl:when>
            <xsl:when test="$TransportModeType=7">Sabit taşıma tesisleri</xsl:when>
            <xsl:when test="$TransportModeType=8">İç su taşımacılığı</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$TransportModeType"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="PaymentMeansCode">
        <xsl:param name="PaymentMeansCodeType"/>
        <xsl:choose>
            <xsl:when test="$PaymentMeansCodeType='1'">ODEME ARACISI</xsl:when>
            <xsl:when test="$PaymentMeansCodeType='10'">KAPIDA ODEME</xsl:when>
            <xsl:when test="$PaymentMeansCodeType='30'">EFT/HAVALE</xsl:when>
            <xsl:when test="$PaymentMeansCodeType='48'">KREDIKARTI/BANKAKARTI</xsl:when>
            <xsl:when test="$PaymentMeansCodeType='ZZZ'">Özel Tanımlı</xsl:when>
            <xsl:when test="$PaymentMeansCodeType='97'">DIGER</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$PaymentMeansCodeType"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="Packaging">
        <xsl:param name="PackagingType"/>
        <xsl:choose>
            <xsl:when test="$PackagingType='1A'">Çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='1B'">Alüminyum bidon</xsl:when>
            <xsl:when test="$PackagingType='1D'">Kontraplak bidon</xsl:when>
            <xsl:when test="$PackagingType='1F'">Esnek ambalaj kutu</xsl:when>
            <xsl:when test="$PackagingType='1G'">Elyaflı silindir</xsl:when>
            <xsl:when test="$PackagingType='1W'">Ahşap silindir</xsl:when>
            <xsl:when test="$PackagingType='2C'">Ahşap varil</xsl:when>
            <xsl:when test="$PackagingType='3A'">Beş galonluk çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='3H'">Beş galonluk plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='43'">Torba, süper boy</xsl:when>
            <xsl:when test="$PackagingType='44'">Çoklu torba</xsl:when>
            <xsl:when test="$PackagingType='4A'">Çelik kutu</xsl:when>
            <xsl:when test="$PackagingType='4B'">Alüminyum kutu</xsl:when>
            <xsl:when test="$PackagingType='4C'">Doğal ahşap kutu</xsl:when>
            <xsl:when test="$PackagingType='4D'">Kontraplak kutu</xsl:when>
            <xsl:when test="$PackagingType='4F'">Yeniden üretilmiş ahşap kutu</xsl:when>
            <xsl:when test="$PackagingType='4G'">Elyaf tahta kutu</xsl:when>
            <xsl:when test="$PackagingType='4H'">Plastik kutu</xsl:when>
            <xsl:when test="$PackagingType='5H'">Plastik dokuma torba</xsl:when>
            <xsl:when test="$PackagingType='5L'">Kumaş torba</xsl:when>
            <xsl:when test="$PackagingType='5M'">Kağıt torba</xsl:when>
            <xsl:when test="$PackagingType='6H'">Kompozit ambalaj, plastik kap</xsl:when>
            <xsl:when test="$PackagingType='6P'">Kompozit ambalaj, cam kutu</xsl:when>
            <xsl:when test="$PackagingType='7A'">Araba kabı</xsl:when>
            <xsl:when test="$PackagingType='7B'">Ahşap kasa</xsl:when>
            <xsl:when test="$PackagingType='8A'">Ahşap palet</xsl:when>
            <xsl:when test="$PackagingType='8B'">Ahşap kasa</xsl:when>
            <xsl:when test="$PackagingType='8C'">Ahşap paketi</xsl:when>
            <xsl:when test="$PackagingType='AA'">Ortaboy sert plastik dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='AB'">Elyaf kap</xsl:when>
            <xsl:when test="$PackagingType='AC'">Kağıt kap</xsl:when>
            <xsl:when test="$PackagingType='AD'">Ahşap kap</xsl:when>
            <xsl:when test="$PackagingType='AE'">Aerosol</xsl:when>
            <xsl:when test="$PackagingType='AF'">Palet, modüler, yaka 80cms * 60cms</xsl:when>
            <xsl:when test="$PackagingType='AG'">Sarılmış palet</xsl:when>
            <xsl:when test="$PackagingType='AH'">Palet, 100 cms * 110 cms</xsl:when>
            <xsl:when test="$PackagingType='AI'">Çift çeneli kepçe</xsl:when>
            <xsl:when test="$PackagingType='AJ'">Koni</xsl:when>
            <xsl:when test="$PackagingType='AL'">Top</xsl:when>
            <xsl:when test="$PackagingType='AM'">Korumasız ampul</xsl:when>
            <xsl:when test="$PackagingType='AP'">Korumalı ampül</xsl:when>
            <xsl:when test="$PackagingType='AT'">Püskürteç</xsl:when>
            <xsl:when test="$PackagingType='AV'">Kapsül</xsl:when>
            <xsl:when test="$PackagingType='B4'">Kemer</xsl:when>
            <xsl:when test="$PackagingType='BA'">Varil</xsl:when>
            <xsl:when test="$PackagingType='BB'">Bobin</xsl:when>
            <xsl:when test="$PackagingType='BC'">Şişe kasası/rafı</xsl:when>
            <xsl:when test="$PackagingType='BD'">Tahta</xsl:when>
            <xsl:when test="$PackagingType='BE'">Bohça</xsl:when>
            <xsl:when test="$PackagingType='BF'">Balon, korunmasız</xsl:when>
            <xsl:when test="$PackagingType='BG'">Torba</xsl:when>
            <xsl:when test="$PackagingType='BH'">Demet</xsl:when>
            <xsl:when test="$PackagingType='BI'">Çöp kutusu</xsl:when>
            <xsl:when test="$PackagingType='BJ'">Kova</xsl:when>
            <xsl:when test="$PackagingType='BK'">Sepet</xsl:when>
            <xsl:when test="$PackagingType='BL'">Sıkıştırılmış balya</xsl:when>
            <xsl:when test="$PackagingType='BM'">Kase</xsl:when>
            <xsl:when test="$PackagingType='BN'">Sıkıştırılmamış balya</xsl:when>
            <xsl:when test="$PackagingType='BO'">Şişe, korunmasız, silindirik</xsl:when>
            <xsl:when test="$PackagingType='BP'">Balon, korunmasız</xsl:when>
            <xsl:when test="$PackagingType='BQ'">Şişe, korunmuş, silindirik</xsl:when>
            <xsl:when test="$PackagingType='BR'">Çubuk</xsl:when>
            <xsl:when test="$PackagingType='BS'">Şişe, korunmasız, soğanbiçim</xsl:when>
            <xsl:when test="$PackagingType='BT'">Sürgü</xsl:when>
            <xsl:when test="$PackagingType='BU'">İzmarit</xsl:when>
            <xsl:when test="$PackagingType='BV'">Şişe, korunmuş, soğanbiçim</xsl:when>
            <xsl:when test="$PackagingType='BW'">Sıvılar için kutu</xsl:when>
            <xsl:when test="$PackagingType='BX'">Kutu</xsl:when>
            <xsl:when test="$PackagingType='BY'">Tahta, paket halinde/demet</xsl:when>
            <xsl:when test="$PackagingType='BZ'">Çıbuklar, paket halinde/demet</xsl:when>
            <xsl:when test="$PackagingType='CA'">Dikdörtgen teneke</xsl:when>
            <xsl:when test="$PackagingType='CB'">Bira kasası</xsl:when>
            <xsl:when test="$PackagingType='CC'">Yayık</xsl:when>
            <xsl:when test="$PackagingType='CD'">Teneke ibrik</xsl:when>
            <xsl:when test="$PackagingType='CE'">Balık sepeti</xsl:when>
            <xsl:when test="$PackagingType='CF'">Sandık</xsl:when>
            <xsl:when test="$PackagingType='CG'">Kafes</xsl:when>
            <xsl:when test="$PackagingType='CH'">Sandık</xsl:when>
            <xsl:when test="$PackagingType='CI'">Teneke kutu</xsl:when>
            <xsl:when test="$PackagingType='CJ'">Tabut</xsl:when>
            <xsl:when test="$PackagingType='CK'">Fıçı</xsl:when>
            <xsl:when test="$PackagingType='CL'">Bobin</xsl:when>
            <xsl:when test="$PackagingType='CM'">Kart</xsl:when>
            <xsl:when test="$PackagingType='CN'">Konteyner</xsl:when>
            <xsl:when test="$PackagingType='CO'">Damacana, korumasız</xsl:when>
            <xsl:when test="$PackagingType='CP'">Damacana, korumalı</xsl:when>
            <xsl:when test="$PackagingType='CQ'">Kartuş</xsl:when>
            <xsl:when test="$PackagingType='CR'">Kasa</xsl:when>
            <xsl:when test="$PackagingType='CS'">Kutu</xsl:when>
            <xsl:when test="$PackagingType='CT'">Karton kutu</xsl:when>
            <xsl:when test="$PackagingType='CU'">Fincan</xsl:when>
            <xsl:when test="$PackagingType='CV'">Kapak</xsl:when>
            <xsl:when test="$PackagingType='CW'">Rulo kafes</xsl:when>
            <xsl:when test="$PackagingType='CX'">Silindirik teneke</xsl:when>
            <xsl:when test="$PackagingType='CY'">Silindir</xsl:when>
            <xsl:when test="$PackagingType='CZ'">Tuval</xsl:when>
            <xsl:when test="$PackagingType='DA'">Kasa, çok tabakalı, plastik</xsl:when>
            <xsl:when test="$PackagingType='DB'">Kasa, çok tabakalı, ahşap</xsl:when>
            <xsl:when test="$PackagingType='DC'">Kasa, çok tabakalı, karton</xsl:when>
            <xsl:when test="$PackagingType='DI'">Demir varil</xsl:when>
            <xsl:when test="$PackagingType='DJ'">Damacana</xsl:when>
            <xsl:when test="$PackagingType='DK'">Karton kasa</xsl:when>
            <xsl:when test="$PackagingType='DL'">Plastik dökme kasa</xsl:when>
            <xsl:when test="$PackagingType='DM'">Ahşap dökme kasa</xsl:when>
            <xsl:when test="$PackagingType='DN'">Sebil/dağıtıcı</xsl:when>
            <xsl:when test="$PackagingType='DP'">Damacana, korumalı</xsl:when>
            <xsl:when test="$PackagingType='DR'">Bidon</xsl:when>
            <xsl:when test="$PackagingType='DS'">Üst kapaksız plastik tepsi, tek tabaka</xsl:when>
            <xsl:when test="$PackagingType='DT'">Üst kapaksız ahşap tepsi, tek tabaka</xsl:when>
            <xsl:when test="$PackagingType='DU'">Üst kapaksız polistiren tepsi, tek
                tabaka</xsl:when>
            <xsl:when test="$PackagingType='DV'">Üst kapaksız karton tepsi, tek tabaka</xsl:when>
            <xsl:when test="$PackagingType='DW'">Üst kapaksız plastik tepsi, çift tabaka</xsl:when>
            <xsl:when test="$PackagingType='DX'"/>
            <xsl:when test="$PackagingType='DY'">Üst kapaksız karton tepsi, çift tabaka</xsl:when>
            <xsl:when test="$PackagingType='EC'">Plastik torba</xsl:when>
            <xsl:when test="$PackagingType='ED'">Kasa, palet tabanı ile</xsl:when>
            <xsl:when test="$PackagingType='EE'">Ahşap kasa, palet tabanı ile</xsl:when>
            <xsl:when test="$PackagingType='EF'">Karton kasa, palet tabanı ile</xsl:when>
            <xsl:when test="$PackagingType='EG'">Plastik kasa, palet tabanı ile</xsl:when>
            <xsl:when test="$PackagingType='EH'">Metal kasa, palet tabanı ile</xsl:when>
            <xsl:when test="$PackagingType='EI'">İzotermik kasa</xsl:when>
            <xsl:when test="$PackagingType='EN'">Zarf</xsl:when>
            <xsl:when test="$PackagingType='FB'">Plastik esnek torba</xsl:when>
            <xsl:when test="$PackagingType='FC'">Meyve kasası</xsl:when>
            <xsl:when test="$PackagingType='FD'">Çerçeveli kasa</xsl:when>
            <xsl:when test="$PackagingType='FE'">Plastik esnek depo</xsl:when>
            <xsl:when test="$PackagingType='FI'">Küçük fıçı</xsl:when>
            <xsl:when test="$PackagingType='FL'">Matara</xsl:when>
            <xsl:when test="$PackagingType='FO'">Küçük sandık</xsl:when>
            <xsl:when test="$PackagingType='FR'">Çerçeve</xsl:when>
            <xsl:when test="$PackagingType='FT'">Streçlenmiş yemek kabı</xsl:when>
            <xsl:when test="$PackagingType='FW'">Yanları üstü açık yük arabası</xsl:when>
            <xsl:when test="$PackagingType='FX'">Esnek torba</xsl:when>
            <xsl:when test="$PackagingType='GB'">Gaz şişesi</xsl:when>
            <xsl:when test="$PackagingType='GI'">Kiriş</xsl:when>
            <xsl:when test="$PackagingType='GL'">Konteyner, galon</xsl:when>
            <xsl:when test="$PackagingType='GR'">Cam kap</xsl:when>
            <xsl:when test="$PackagingType='GY'">Çul</xsl:when>
            <xsl:when test="$PackagingType='GZ'">Kiriş, demet/grup</xsl:when>
            <xsl:when test="$PackagingType='HA'">Saplı plastik sepet</xsl:when>
            <xsl:when test="$PackagingType='HB'">Saplı ahşap sepet</xsl:when>
            <xsl:when test="$PackagingType='HC'">Saplı karton sepet</xsl:when>
            <xsl:when test="$PackagingType='HG'">Büyük fıçı</xsl:when>
            <xsl:when test="$PackagingType='HN'">Askı</xsl:when>
            <xsl:when test="$PackagingType='HR'">Kapaklı sepet</xsl:when>
            <xsl:when test="$PackagingType='IA'">Ahşap sergi paketi</xsl:when>
            <xsl:when test="$PackagingType='IB'">Karton sergi paketi</xsl:when>
            <xsl:when test="$PackagingType='IC'">Plastik sergi paketi</xsl:when>
            <xsl:when test="$PackagingType='ID'">Metal sergi paketi</xsl:when>
            <xsl:when test="$PackagingType='IE'">Gösteri paketi</xsl:when>
            <xsl:when test="$PackagingType='IF'">Şeffaf oluklu paket</xsl:when>
            <xsl:when test="$PackagingType='IG'">Kağıt sarılı ambalaj</xsl:when>
            <xsl:when test="$PackagingType='IH'">Plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='IK'">Şişe delikli karton paket</xsl:when>
            <xsl:when test="$PackagingType='IL'">Tepsi, katı, kapaklı istiflenebilir</xsl:when>
            <xsl:when test="$PackagingType='IN'">Külçe</xsl:when>
            <xsl:when test="$PackagingType='IZ'">Paket/grop halde külçe</xsl:when>
            <xsl:when test="$PackagingType='JB'">Jumbo boy torba</xsl:when>
            <xsl:when test="$PackagingType='JC'">Beş galonluk dikdörtgen bidon</xsl:when>
            <xsl:when test="$PackagingType='JG'">Sürahi</xsl:when>
            <xsl:when test="$PackagingType='JR'">Kavanoz</xsl:when>
            <xsl:when test="$PackagingType='JY'">Beş galonluk silindir bidon</xsl:when>
            <xsl:when test="$PackagingType='KI'">Takım</xsl:when>
            <xsl:when test="$PackagingType='LE'">Bagaj</xsl:when>
            <xsl:when test="$PackagingType='LG'">Kütük</xsl:when>
            <xsl:when test="$PackagingType='LT'">Pay</xsl:when>
            <xsl:when test="$PackagingType='LU'">Kulp</xsl:when>
            <xsl:when test="$PackagingType='LV'">Liftvan</xsl:when>
            <xsl:when test="$PackagingType='LZ'">Paket/grup kütükler</xsl:when>
            <xsl:when test="$PackagingType='MA'">Metal kasa</xsl:when>
            <xsl:when test="$PackagingType='MB'">Çoklu çanta</xsl:when>
            <xsl:when test="$PackagingType='MC'">Süt kasasu</xsl:when>
            <xsl:when test="$PackagingType='ME'">Metal konteyner</xsl:when>
            <xsl:when test="$PackagingType='MR'">Metal kap</xsl:when>
            <xsl:when test="$PackagingType='MS'">Çok duvarlı çuval</xsl:when>
            <xsl:when test="$PackagingType='MT'">Mat</xsl:when>
            <xsl:when test="$PackagingType='MW'">Plastik sarılmış kap</xsl:when>
            <xsl:when test="$PackagingType='MX'">Kibrit kutusu</xsl:when>
            <xsl:when test="$PackagingType='NE'">Ambalajsız</xsl:when>
            <xsl:when test="$PackagingType='NF'">Ambalajsız, tek ünite</xsl:when>
            <xsl:when test="$PackagingType='NG'">Ambalajsız, çok ünite</xsl:when>
            <xsl:when test="$PackagingType='NS'">Yuva</xsl:when>
            <xsl:when test="$PackagingType='NT'">Ağ</xsl:when>
            <xsl:when test="$PackagingType='NU'">Plastik ağ tüp</xsl:when>
            <xsl:when test="$PackagingType='NV'">Kumaş ağ tüp</xsl:when>
            <xsl:when test="$PackagingType='OA'">Palet, CHEP 40x60 cm</xsl:when>
            <xsl:when test="$PackagingType='OB'">Palet, CHEP 80x120 cm</xsl:when>
            <xsl:when test="$PackagingType='OC'">Palet, CHEP 100x120 cm</xsl:when>
            <xsl:when test="$PackagingType='OD'">Avustralya standart paleti</xsl:when>
            <xsl:when test="$PackagingType='OE'">Palet, 110x100 cm</xsl:when>
            <xsl:when test="$PackagingType='OF'">Nakliye platformu, belirtilmemiş ağırlık ve
                bıyut</xsl:when>
            <xsl:when test="$PackagingType='OK'">Blok</xsl:when>
            <xsl:when test="$PackagingType='OT'">Sekiz kenar kutu</xsl:when>
            <xsl:when test="$PackagingType='OU'">Dış konteyner</xsl:when>
            <xsl:when test="$PackagingType='P2'">Tava</xsl:when>
            <xsl:when test="$PackagingType='PA'">Küçük paket</xsl:when>
            <xsl:when test="$PackagingType='PB'">Kombine açık uçlu kutu ve palet</xsl:when>
            <xsl:when test="$PackagingType='PC'">Parsel</xsl:when>
            <xsl:when test="$PackagingType='PD'">Palet, modüler 80 x 100 cm</xsl:when>
            <xsl:when test="$PackagingType='PE'">Palet, modüler 80 x 120 cm</xsl:when>
            <xsl:when test="$PackagingType='PF'">Kalem</xsl:when>
            <xsl:when test="$PackagingType='PG'">Plaka</xsl:when>
            <xsl:when test="$PackagingType='PH'">Sürahi</xsl:when>
            <xsl:when test="$PackagingType='PI'">Boru</xsl:when>
            <xsl:when test="$PackagingType='PJ'">Meyve sepeti</xsl:when>
            <xsl:when test="$PackagingType='PK'">Paket</xsl:when>
            <xsl:when test="$PackagingType='PL'">Gerdel</xsl:when>
            <xsl:when test="$PackagingType='PN'">Kalas</xsl:when>
            <xsl:when test="$PackagingType='PO'">Destek</xsl:when>
            <xsl:when test="$PackagingType='PP'">Parça</xsl:when>
            <xsl:when test="$PackagingType='PR'">Plastik kap</xsl:when>
            <xsl:when test="$PackagingType='PT'">Demlik</xsl:when>
            <xsl:when test="$PackagingType='PU'">Tepsi</xsl:when>
            <xsl:when test="$PackagingType='PV'">Paket/grup boru</xsl:when>
            <xsl:when test="$PackagingType='PX'">Palet</xsl:when>
            <xsl:when test="$PackagingType='PY'">Paket/grup tabak</xsl:when>
            <xsl:when test="$PackagingType='PZ'">Paket/grup kalas</xsl:when>
            <xsl:when test="$PackagingType='QA'">Üstü açılmaz çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='QB'">Üstü açılır çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='QC'">Üstü açılmaz alüminyum bidon</xsl:when>
            <xsl:when test="$PackagingType='QD'">Üstü açılır alüminyum bidon</xsl:when>
            <xsl:when test="$PackagingType='QF'">Üstü açılmaz plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='QG'">Üstü açılır plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='QH'">Ahşap tıkaçlı varil</xsl:when>
            <xsl:when test="$PackagingType='QJ'">Üstü açılır ahşap varil</xsl:when>
            <xsl:when test="$PackagingType='QK'">Üstü açılmaz beş galonluk çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='QL'">Üstü açılır beş galonluk çelik bidon</xsl:when>
            <xsl:when test="$PackagingType='QM'">Üstü açılmaz beş galonluk plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='QN'">Üstü açılır beş galonluk plastik bidon</xsl:when>
            <xsl:when test="$PackagingType='QP'">Doğal ahşap kutu</xsl:when>
            <xsl:when test="$PackagingType='QQ'">Emniyet duvarlı doğal ahşap kutu</xsl:when>
            <xsl:when test="$PackagingType='QR'">Genişletilmiş plastik kutu</xsl:when>
            <xsl:when test="$PackagingType='QS'">Yekpare plastik kutu</xsl:when>
            <xsl:when test="$PackagingType='RD'">Çubuk</xsl:when>
            <xsl:when test="$PackagingType='RG'">Halka</xsl:when>
            <xsl:when test="$PackagingType='RJ'">Raf, elbise askısı</xsl:when>
            <xsl:when test="$PackagingType='RK'">Raf</xsl:when>
            <xsl:when test="$PackagingType='RL'">Makara</xsl:when>
            <xsl:when test="$PackagingType='RO'">Rulo</xsl:when>
            <xsl:when test="$PackagingType='RZ'">Paket/grup çubuk</xsl:when>
            <xsl:when test="$PackagingType='SA'">Çuval</xsl:when>
            <xsl:when test="$PackagingType='SB'">Levha</xsl:when>
            <xsl:when test="$PackagingType='SC'">Sığ kasa</xsl:when>
            <xsl:when test="$PackagingType='SD'">İğ</xsl:when>
            <xsl:when test="$PackagingType='SE'">Deniz sandığı</xsl:when>
            <xsl:when test="$PackagingType='SH'">Kesecik</xsl:when>
            <xsl:when test="$PackagingType='SI'">Kızak</xsl:when>
            <xsl:when test="$PackagingType='SK'">İskelet kasa</xsl:when>
            <xsl:when test="$PackagingType='SL'">Taşıma paleti</xsl:when>
            <xsl:when test="$PackagingType='SM'">Sac</xsl:when>
            <xsl:when test="$PackagingType='SO'">Tel/kablo/iplik makarası</xsl:when>
            <xsl:when test="$PackagingType='SP'">Plastik levha</xsl:when>
            <xsl:when test="$PackagingType='SS'">Çelik kasa</xsl:when>
            <xsl:when test="$PackagingType='ST'">Yaprak</xsl:when>
            <xsl:when test="$PackagingType='SU'">Bavul</xsl:when>
            <xsl:when test="$PackagingType='SV'">Çelik zarf</xsl:when>
            <xsl:when test="$PackagingType='SW'">Vakumlu ambalaj</xsl:when>
            <xsl:when test="$PackagingType='SX'">Set</xsl:when>
            <xsl:when test="$PackagingType='SY'">Kılıf</xsl:when>
            <xsl:when test="$PackagingType='SZ'">Paket/grup yaprak</xsl:when>
            <xsl:when test="$PackagingType='T1'">Tablet</xsl:when>
            <xsl:when test="$PackagingType='TB'">Küvet</xsl:when>
            <xsl:when test="$PackagingType='TC'">Çay sandığı</xsl:when>
            <xsl:when test="$PackagingType='TD'">Sıkılabilir tüp</xsl:when>
            <xsl:when test="$PackagingType='TE'">Lastik</xsl:when>
            <xsl:when test="$PackagingType='TG'">Genel tank konteynerı</xsl:when>
            <xsl:when test="$PackagingType='TI'"/>
            <xsl:when test="$PackagingType='TK'">Dikdörtgen tank</xsl:when>
            <xsl:when test="$PackagingType='TN'">Teneke</xsl:when>
            <xsl:when test="$PackagingType='TO'">Şarap fıçısı</xsl:when>
            <xsl:when test="$PackagingType='TR'">Gövde</xsl:when>
            <xsl:when test="$PackagingType='TS'">Bağ</xsl:when>
            <xsl:when test="$PackagingType='TU'">Tüp</xsl:when>
            <xsl:when test="$PackagingType='TV'">Enjektörlü tüp</xsl:when>
            <xsl:when test="$PackagingType='TY'">Silindirik tank</xsl:when>
            <xsl:when test="$PackagingType='TZ'">Paket/grup tüpler</xsl:when>
            <xsl:when test="$PackagingType='UN'">Birim</xsl:when>
            <xsl:when test="$PackagingType='VG'">Dökme gaz</xsl:when>
            <xsl:when test="$PackagingType='VI'">Küçük şişe</xsl:when>
            <xsl:when test="$PackagingType='VL'">Dökme sıvı</xsl:when>
            <xsl:when test="$PackagingType='VO'">Dökme katı</xsl:when>
            <xsl:when test="$PackagingType='VP'">Vakumlu</xsl:when>
            <xsl:when test="$PackagingType='VQ'">Dökme sıvılaştırılmış gaz</xsl:when>
            <xsl:when test="$PackagingType='VN'">Araç</xsl:when>
            <xsl:when test="$PackagingType='VR'">Dökme katı granül</xsl:when>
            <xsl:when test="$PackagingType='VS'">Dökme metal hurda</xsl:when>
            <xsl:when test="$PackagingType='VY'">Dökme ince parçacıklar</xsl:when>
            <xsl:when test="$PackagingType='WA'">Ortaboy dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WB'">Hasırlı şişe</xsl:when>
            <xsl:when test="$PackagingType='WC'">Ortaboy çelik dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WD'">Ortaboy alüminyum dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WF'">Ortaboy metal dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WK'">Sıvılar için ortaboy çelik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WL'">Sıvılar için ortaboy alümünyum dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WM'">Sıvılar için ortaboy metal dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WN'">Ortaboy iç astarsız örme plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WR'">Ortaboy iç astarlı örme plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WS'">Ortaboy plastik film dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WT'">Ortaboy iç astarsız kumaş plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WU'">Ortaboy iç astarlı doğal ahşap dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WX'">Ortaboy iç astarlı kumaş dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WY'">Ortaboy iç astarlı kontraplak dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='WZ'">Ortaboy iç astarlı sunta dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='XA'">İç astarsız örme plastik torba</xsl:when>
            <xsl:when test="$PackagingType='XB'">Sızdırmaz örme plastik torba</xsl:when>
            <xsl:when test="$PackagingType='XC'">Su geçirmez örme plastik torba</xsl:when>
            <xsl:when test="$PackagingType='XD'">Plastik film torba</xsl:when>
            <xsl:when test="$PackagingType='XF'">İç astarsız kumaş torba</xsl:when>
            <xsl:when test="$PackagingType='XG'">Sızdırmaz kumaş torba</xsl:when>
            <xsl:when test="$PackagingType='XH'">Su geçirmez kumaş torba</xsl:when>
            <xsl:when test="$PackagingType='XJ'">Çok duvarlı kağıt torba</xsl:when>
            <xsl:when test="$PackagingType='XK'">Su geçirmez çok duvarlı kağıt torba</xsl:when>
            <xsl:when test="$PackagingType='YA'">Kompozit ambalaj, çelik bidon içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YB'">Kompozit ambalaj, çelik kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YC'">Kompozit ambalaj, alüminyum bidon içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YD'">Kompozit ambalaj, alüminyum kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YF'">Kompozit ambalaj, ahşap kutu içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YG'">Kompozit ambalaj, kontraplak bidon içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YH'">Kompozit ambalaj, kontraplak kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YJ'">Kompozit ambalaj, elyaf bidon içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YK'">Kompozit ambalaj, elyaf levha kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YL'">Kompozit ambalaj, plastik bidon içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YM'">Kompozit ambalaj, yekpare plastik kasa içindeki
                plastik kap</xsl:when>
            <xsl:when test="$PackagingType='YN'">Kompozit ambalaj, çelik bidon içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YP'">Kompozit ambalaj, elyaf levha kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YQ'">Kompozit ambalaj, alüminyum bidon içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YR'">Kompozit ambalaj, alüminyum kasa içindeki plastik
                kap</xsl:when>
            <xsl:when test="$PackagingType='YS'">Kompozit ambalaj, ahşap kasa içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YT'">Kompozit ambalaj, kontraplak bidon içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YV'">Kompozit ambalaj, hasır sepet içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YW'">Kompozit ambalaj, elyaf bidon içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YX'">Kompozit ambalaj, elyaf levha kasa içindeki cam
                kap</xsl:when>
            <xsl:when test="$PackagingType='YY'">Kompozit ambalaj, genişleyebilir plastik paket
                içindeki cam kap</xsl:when>
            <xsl:when test="$PackagingType='YZ'">Kompozit ambalaj, yekpare plastik paket içindeki
                cam kap</xsl:when>
            <xsl:when test="$PackagingType='ZA'">Ortaboy çok duvarlı kağıt dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZB'">Büyük boy torba</xsl:when>
            <xsl:when test="$PackagingType='ZC'">Ortaboy çok duvarlı su geçirmez kağıt dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZL'">Ortaboy kompozit yekpare sert plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZM'">Ortaboy kompozit yekpare esnek plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZN'">Ortaboy kompozit sıkıştırılmış sert plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZP'">Ortaboy kompozit sıkıştırılmış esnek plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZQ'">Sıvılar için ortaboy kompozit sert plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZR'">Sıvılar için ortaboy kompozit esnek plastik dolum
                konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZS'">Ortaboy kompozit dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZT'">Ortaboy elyaf levha dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZU'">Ortaboy esnek dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZW'">Ortaboy doğal ahşap dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZX'">Ortaboy kontraplak dolum konteynerı</xsl:when>
            <xsl:when test="$PackagingType='ZY'">Ortaboy sunta dolum konteynerı</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$PackagingType"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="Country">
        <xsl:param name="CountryType"/>
        <xsl:choose>
            <xsl:when test="$CountryType='AF'">Afganistan</xsl:when>
            <xsl:when test="$CountryType='DE'">Almanya</xsl:when>
            <xsl:when test="$CountryType='AD'">Andorra</xsl:when>
            <xsl:when test="$CountryType='AO'">Angola</xsl:when>
            <xsl:when test="$CountryType='AG'">Antigua ve Barbuda</xsl:when>
            <xsl:when test="$CountryType='AR'">Arjantin</xsl:when>
            <xsl:when test="$CountryType='AL'">Arnavutluk</xsl:when>
            <xsl:when test="$CountryType='AW'">Aruba</xsl:when>
            <xsl:when test="$CountryType='AU'">Avustralya</xsl:when>
            <xsl:when test="$CountryType='AT'">Avusturya</xsl:when>
            <xsl:when test="$CountryType='AZ'">Azerbaycan</xsl:when>
            <xsl:when test="$CountryType='BS'">Bahamalar</xsl:when>
            <xsl:when test="$CountryType='BH'">Bahreyn</xsl:when>
            <xsl:when test="$CountryType='BD'">Bangladeş</xsl:when>
            <xsl:when test="$CountryType='BB'">Barbados</xsl:when>
            <xsl:when test="$CountryType='EH'">Batı Sahra (MA)</xsl:when>
            <xsl:when test="$CountryType='BE'">Belçika</xsl:when>
            <xsl:when test="$CountryType='BZ'">Belize</xsl:when>
            <xsl:when test="$CountryType='BJ'">Benin</xsl:when>
            <xsl:when test="$CountryType='BM'">Bermuda</xsl:when>
            <xsl:when test="$CountryType='BY'">Beyaz Rusya</xsl:when>
            <xsl:when test="$CountryType='BT'">Bhutan</xsl:when>
            <xsl:when test="$CountryType='AE'">Birleşik Arap Emirlikleri</xsl:when>
            <xsl:when test="$CountryType='US'">Birleşik Devletler</xsl:when>
            <xsl:when test="$CountryType='GB'">Birleşik Krallık</xsl:when>
            <xsl:when test="$CountryType='BO'">Bolivya</xsl:when>
            <xsl:when test="$CountryType='BA'">Bosna-Hersek</xsl:when>
            <xsl:when test="$CountryType='BW'">Botsvana</xsl:when>
            <xsl:when test="$CountryType='BR'">Brezilya</xsl:when>
            <xsl:when test="$CountryType='BN'">Bruney</xsl:when>
            <xsl:when test="$CountryType='BG'">Bulgaristan</xsl:when>
            <xsl:when test="$CountryType='BF'">Burkina Faso</xsl:when>
            <xsl:when test="$CountryType='BI'">Burundi</xsl:when>
            <xsl:when test="$CountryType='TD'">Çad</xsl:when>
            <xsl:when test="$CountryType='KY'">Cayman Adaları</xsl:when>
            <xsl:when test="$CountryType='GI'">Cebelitarık (GB)</xsl:when>
            <xsl:when test="$CountryType='CZ'">Çek Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='DZ'">Cezayir</xsl:when>
            <xsl:when test="$CountryType='DJ'">Cibuti</xsl:when>
            <xsl:when test="$CountryType='CN'">Çin</xsl:when>
            <xsl:when test="$CountryType='DK'">Danimarka</xsl:when>
            <xsl:when test="$CountryType='CD'">Demokratik Kongo Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='TL'">Doğu Timor</xsl:when>
            <xsl:when test="$CountryType='DO'">Dominik Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='DM'">Dominika</xsl:when>
            <xsl:when test="$CountryType='EC'">Ekvador</xsl:when>
            <xsl:when test="$CountryType='GQ'">Ekvator Ginesi</xsl:when>
            <xsl:when test="$CountryType='SV'">El Salvador</xsl:when>
            <xsl:when test="$CountryType='ID'">Endonezya</xsl:when>
            <xsl:when test="$CountryType='ER'">Eritre</xsl:when>
            <xsl:when test="$CountryType='AM'">Ermenistan</xsl:when>
            <xsl:when test="$CountryType='MF'">Ermiş Martin (FR)</xsl:when>
            <xsl:when test="$CountryType='EE'">Estonya</xsl:when>
            <xsl:when test="$CountryType='ET'">Etiyopya</xsl:when>
            <xsl:when test="$CountryType='FK'">Falkland Adaları</xsl:when>
            <xsl:when test="$CountryType='FO'">Faroe Adaları (DK)</xsl:when>
            <xsl:when test="$CountryType='MA'">Fas</xsl:when>
            <xsl:when test="$CountryType='FJ'">Fiji</xsl:when>
            <xsl:when test="$CountryType='CI'">Fildişi Sahili</xsl:when>
            <xsl:when test="$CountryType='PH'">Filipinler</xsl:when>
            <xsl:when test="$CountryType='FI'">Finlandiya</xsl:when>
            <xsl:when test="$CountryType='FR'">Fransa</xsl:when>
            <xsl:when test="$CountryType='GF'">Fransız Guyanası (FR)</xsl:when>
            <xsl:when test="$CountryType='PF'">Fransız Polinezyası (FR)</xsl:when>
            <xsl:when test="$CountryType='GA'">Gabon</xsl:when>
            <xsl:when test="$CountryType='GM'">Gambiya</xsl:when>
            <xsl:when test="$CountryType='GH'">Gana</xsl:when>
            <xsl:when test="$CountryType='GN'">Gine</xsl:when>
            <xsl:when test="$CountryType='GW'">Gine Bissau</xsl:when>
            <xsl:when test="$CountryType='GD'">Grenada</xsl:when>
            <xsl:when test="$CountryType='GL'">Grönland (DK)</xsl:when>
            <xsl:when test="$CountryType='GP'">Guadeloupe (FR)</xsl:when>
            <xsl:when test="$CountryType='GT'">Guatemala</xsl:when>
            <xsl:when test="$CountryType='GG'">Guernsey (GB)</xsl:when>
            <xsl:when test="$CountryType='ZA'">Güney Afrika</xsl:when>
            <xsl:when test="$CountryType='KR'">Güney Kore</xsl:when>
            <xsl:when test="$CountryType='GE'">Gürcistan</xsl:when>
            <xsl:when test="$CountryType='GY'">Guyana</xsl:when>
            <xsl:when test="$CountryType='HT'">Haiti</xsl:when>
            <xsl:when test="$CountryType='IN'">Hindistan</xsl:when>
            <xsl:when test="$CountryType='HR'">Hırvatistan</xsl:when>
            <xsl:when test="$CountryType='NL'">Hollanda</xsl:when>
            <xsl:when test="$CountryType='HN'">Honduras</xsl:when>
            <xsl:when test="$CountryType='HK'">Hong Kong (CN)</xsl:when>
            <xsl:when test="$CountryType='VG'">İngiliz Virjin Adaları</xsl:when>
            <xsl:when test="$CountryType='IQ'">Irak</xsl:when>
            <xsl:when test="$CountryType='IR'">İran</xsl:when>
            <xsl:when test="$CountryType='IE'">İrlanda</xsl:when>
            <xsl:when test="$CountryType='ES'">İspanya</xsl:when>
            <xsl:when test="$CountryType='IL'">İsrail</xsl:when>
            <xsl:when test="$CountryType='SE'">İsveç</xsl:when>
            <xsl:when test="$CountryType='CH'">İsviçre</xsl:when>
            <xsl:when test="$CountryType='IT'">İtalya</xsl:when>
            <xsl:when test="$CountryType='IS'">İzlanda</xsl:when>
            <xsl:when test="$CountryType='JM'">Jamaika</xsl:when>
            <xsl:when test="$CountryType='JP'">Japonya</xsl:when>
            <xsl:when test="$CountryType='JE'">Jersey (GB)</xsl:when>
            <xsl:when test="$CountryType='KH'">Kamboçya</xsl:when>
            <xsl:when test="$CountryType='CM'">Kamerun</xsl:when>
            <xsl:when test="$CountryType='CA'">Kanada</xsl:when>
            <xsl:when test="$CountryType='ME'">Karadağ</xsl:when>
            <xsl:when test="$CountryType='QA'">Katar</xsl:when>
            <xsl:when test="$CountryType='KZ'">Kazakistan</xsl:when>
            <xsl:when test="$CountryType='KE'">Kenya</xsl:when>
            <xsl:when test="$CountryType='CY'">Kıbrıs</xsl:when>
            <xsl:when test="$CountryType='KG'">Kırgızistan</xsl:when>
            <xsl:when test="$CountryType='KI'">Kiribati</xsl:when>
            <xsl:when test="$CountryType='CO'">Kolombiya</xsl:when>
            <xsl:when test="$CountryType='KM'">Komorlar</xsl:when>
            <xsl:when test="$CountryType='CG'">Kongo Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='KV'">Kosova (RS)</xsl:when>
            <xsl:when test="$CountryType='CR'">Kosta Rika</xsl:when>
            <xsl:when test="$CountryType='CU'">Küba</xsl:when>
            <xsl:when test="$CountryType='KW'">Kuveyt</xsl:when>
            <xsl:when test="$CountryType='KP'">Kuzey Kore</xsl:when>
            <xsl:when test="$CountryType='LA'">Laos</xsl:when>
            <xsl:when test="$CountryType='LS'">Lesoto</xsl:when>
            <xsl:when test="$CountryType='LV'">Letonya</xsl:when>
            <xsl:when test="$CountryType='LR'">Liberya</xsl:when>
            <xsl:when test="$CountryType='LY'">Libya</xsl:when>
            <xsl:when test="$CountryType='LI'">Lihtenştayn</xsl:when>
            <xsl:when test="$CountryType='LT'">Litvanya</xsl:when>
            <xsl:when test="$CountryType='LB'">Lübnan</xsl:when>
            <xsl:when test="$CountryType='LU'">Lüksemburg</xsl:when>
            <xsl:when test="$CountryType='HU'">Macaristan</xsl:when>
            <xsl:when test="$CountryType='MG'">Madagaskar</xsl:when>
            <xsl:when test="$CountryType='MO'">Makao (CN)</xsl:when>
            <xsl:when test="$CountryType='MK'">Makedonya</xsl:when>
            <xsl:when test="$CountryType='MW'">Malavi</xsl:when>
            <xsl:when test="$CountryType='MV'">Maldivler</xsl:when>
            <xsl:when test="$CountryType='MY'">Malezya</xsl:when>
            <xsl:when test="$CountryType='ML'">Mali</xsl:when>
            <xsl:when test="$CountryType='MT'">Malta</xsl:when>
            <xsl:when test="$CountryType='IM'">Man Adası (GB)</xsl:when>
            <xsl:when test="$CountryType='MH'">Marshall Adaları</xsl:when>
            <xsl:when test="$CountryType='MQ'">Martinique (FR)</xsl:when>
            <xsl:when test="$CountryType='MU'">Mauritius</xsl:when>
            <xsl:when test="$CountryType='YT'">Mayotte (FR)</xsl:when>
            <xsl:when test="$CountryType='MX'">Meksika</xsl:when>
            <xsl:when test="$CountryType='FM'">Mikronezya</xsl:when>
            <xsl:when test="$CountryType='EG'">Mısır</xsl:when>
            <xsl:when test="$CountryType='MN'">Moğolistan</xsl:when>
            <xsl:when test="$CountryType='MD'">Moldova</xsl:when>
            <xsl:when test="$CountryType='MC'">Monako</xsl:when>
            <xsl:when test="$CountryType='MR'">Moritanya</xsl:when>
            <xsl:when test="$CountryType='MZ'">Mozambik</xsl:when>
            <xsl:when test="$CountryType='MM'">Myanmar</xsl:when>
            <xsl:when test="$CountryType='NA'">Namibya</xsl:when>
            <xsl:when test="$CountryType='NR'">Nauru</xsl:when>
            <xsl:when test="$CountryType='NP'">Nepal</xsl:when>
            <xsl:when test="$CountryType='NE'">Nijer</xsl:when>
            <xsl:when test="$CountryType='NG'">Nijerya</xsl:when>
            <xsl:when test="$CountryType='NI'">Nikaragua</xsl:when>
            <xsl:when test="$CountryType='NO'">Norveç</xsl:when>
            <xsl:when test="$CountryType='CF'">Orta Afrika Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='UZ'">Özbekistan</xsl:when>
            <xsl:when test="$CountryType='PK'">Pakistan</xsl:when>
            <xsl:when test="$CountryType='PW'">Palau</xsl:when>
            <xsl:when test="$CountryType='PA'">Panama</xsl:when>
            <xsl:when test="$CountryType='PG'">Papua Yeni Gine</xsl:when>
            <xsl:when test="$CountryType='PY'">Paraguay</xsl:when>
            <xsl:when test="$CountryType='PE'">Peru</xsl:when>
            <xsl:when test="$CountryType='PL'">Polonya</xsl:when>
            <xsl:when test="$CountryType='PT'">Portekiz</xsl:when>
            <xsl:when test="$CountryType='PR'">Porto Riko (US)</xsl:when>
            <xsl:when test="$CountryType='RE'">Réunion (FR)</xsl:when>
            <xsl:when test="$CountryType='RO'">Romanya</xsl:when>
            <xsl:when test="$CountryType='RW'">Ruanda</xsl:when>
            <xsl:when test="$CountryType='RU'">Rusya</xsl:when>
            <xsl:when test="$CountryType='BL'">Saint Barthélemy (FR)</xsl:when>
            <xsl:when test="$CountryType='KN'">Saint Kitts ve Nevis</xsl:when>
            <xsl:when test="$CountryType='LC'">Saint Lucia</xsl:when>
            <xsl:when test="$CountryType='PM'">Saint Pierre ve Miquelon (FR)</xsl:when>
            <xsl:when test="$CountryType='VC'">Saint Vincent ve Grenadinler</xsl:when>
            <xsl:when test="$CountryType='WS'">Samoa</xsl:when>
            <xsl:when test="$CountryType='SM'">San Marino</xsl:when>
            <xsl:when test="$CountryType='ST'">São Tomé ve Príncipe</xsl:when>
            <xsl:when test="$CountryType='SN'">Senegal</xsl:when>
            <xsl:when test="$CountryType='SC'">Seyşeller</xsl:when>
            <xsl:when test="$CountryType='SL'">Sierra Leone</xsl:when>
            <xsl:when test="$CountryType='CL'">Şili</xsl:when>
            <xsl:when test="$CountryType='SG'">Singapur</xsl:when>
            <xsl:when test="$CountryType='RS'">Sırbistan</xsl:when>
            <xsl:when test="$CountryType='SK'">Slovakya Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='SI'">Slovenya</xsl:when>
            <xsl:when test="$CountryType='SB'">Solomon Adaları</xsl:when>
            <xsl:when test="$CountryType='SO'">Somali</xsl:when>
            <xsl:when test="$CountryType='SS'">South Sudan</xsl:when>
            <xsl:when test="$CountryType='SJ'">Spitsbergen (NO)</xsl:when>
            <xsl:when test="$CountryType='LK'">Sri Lanka</xsl:when>
            <xsl:when test="$CountryType='SD'">Sudan</xsl:when>
            <xsl:when test="$CountryType='SR'">Surinam</xsl:when>
            <xsl:when test="$CountryType='SY'">Suriye</xsl:when>
            <xsl:when test="$CountryType='SA'">Suudi Arabistan</xsl:when>
            <xsl:when test="$CountryType='SZ'">Svaziland</xsl:when>
            <xsl:when test="$CountryType='TJ'">Tacikistan</xsl:when>
            <xsl:when test="$CountryType='TZ'">Tanzanya</xsl:when>
            <xsl:when test="$CountryType='TH'">Tayland</xsl:when>
            <xsl:when test="$CountryType='TW'">Tayvan</xsl:when>
            <xsl:when test="$CountryType='TG'">Togo</xsl:when>
            <xsl:when test="$CountryType='TO'">Tonga</xsl:when>
            <xsl:when test="$CountryType='TT'">Trinidad ve Tobago</xsl:when>
            <xsl:when test="$CountryType='TN'">Tunus</xsl:when>
            <xsl:when test="$CountryType='TR'">Türkiye</xsl:when>
            <xsl:when test="$CountryType='TM'">Türkmenistan</xsl:when>
            <xsl:when test="$CountryType='TC'">Turks ve Caicos</xsl:when>
            <xsl:when test="$CountryType='TV'">Tuvalu</xsl:when>
            <xsl:when test="$CountryType='UG'">Uganda</xsl:when>
            <xsl:when test="$CountryType='UA'">Ukrayna</xsl:when>
            <xsl:when test="$CountryType='OM'">Umman</xsl:when>
            <xsl:when test="$CountryType='JO'">Ürdün</xsl:when>
            <xsl:when test="$CountryType='UY'">Uruguay</xsl:when>
            <xsl:when test="$CountryType='VU'">Vanuatu</xsl:when>
            <xsl:when test="$CountryType='VA'">Vatikan</xsl:when>
            <xsl:when test="$CountryType='VE'">Venezuela</xsl:when>
            <xsl:when test="$CountryType='VN'">Vietnam</xsl:when>
            <xsl:when test="$CountryType='WF'">Wallis ve Futuna (FR)</xsl:when>
            <xsl:when test="$CountryType='YE'">Yemen</xsl:when>
            <xsl:when test="$CountryType='NC'">Yeni Kaledonya (FR)</xsl:when>
            <xsl:when test="$CountryType='NZ'">Yeni Zelanda</xsl:when>
            <xsl:when test="$CountryType='CV'">Yeşil Burun Adaları</xsl:when>
            <xsl:when test="$CountryType='GR'">Yunanistan</xsl:when>
            <xsl:when test="$CountryType='ZM'">Zambiya</xsl:when>
            <xsl:when test="$CountryType='ZW'">Zimbabve</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$CountryType"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    <xsl:template name="Party_Other">
        <xsl:param name="PartyType"/>
        <xsl:for-each select="cbc:WebsiteURI">
            <tr align="left">
                <td>
                    <xsl:text>Web Sitesi: </xsl:text>
                    <xsl:value-of select="."/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each select="cac:Contact/cbc:ElectronicMail">
            <tr align="left">
                <td>
                    <xsl:text>E-Posta: </xsl:text>
                    <xsl:value-of select="."/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each select="cac:Contact">
            <xsl:if test="cbc:Telephone or cbc:Telefax">
                <tr align="left">
                    <td align="left" style="width:469px; ">
                        <xsl:for-each select="cbc:Telephone">
                            <xsl:text>Tel: </xsl:text>
                            <xsl:apply-templates/>
                        </xsl:for-each>
                        <xsl:for-each select="cbc:Telefax">
                            <xsl:text> Fax: </xsl:text>
                            <xsl:apply-templates/>
                        </xsl:for-each>
                        <xsl:text> </xsl:text>
                    </td>
                </tr>
            </xsl:if>
        </xsl:for-each>
        <xsl:if test="$PartyType!='TAXFREE' and not(starts-with($PartyType, 'EXPORT'))">
            <xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
                <tr align="left">
                    <td>
                        <xsl:text>Vergi Dairesi: </xsl:text>
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="cac:PartyIdentification">
                <tr align="left">
                    <td>
                        <xsl:value-of select="cbc:ID/@schemeID"/>
                        <xsl:text>: </xsl:text>
                        <xsl:value-of select="cbc:ID"/>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="cac:AgentParty/cac:PartyIdentification">
                <tr align="left">
                    <td>
                        <xsl:value-of select="cbc:ID/@schemeID"/>
                        <xsl:text>: </xsl:text>
                        <xsl:value-of select="cbc:ID"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template name="Curr_Type">
        <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
        <xsl:if test="@currencyID">
            <xsl:text> </xsl:text>
            <xsl:choose>
                <xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
                    <xsl:text>TL</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="@currencyID"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>