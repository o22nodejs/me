<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:foo="http://sinvoice.com.vn" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:inv="http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1" exclude-result-prefixes="fo" version="1.1">
  <!--<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:inv="http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1"
    exclude-result-prefixes="fo">-->
  <xsl:function name="foo:custom-num-format">
    <xsl:param name="num"/>
    <xsl:param name="formats"/>
    <xsl:param name="locale"/>
    <xsl:choose>
      <xsl:when test="floor($num) = $num">
        <xsl:value-of select="format-number($num, '###.##0', 'european')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="format-number($num, '###.##0,####', 'european')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>
  <xsl:function name="foo:custom-num-format">
    <xsl:param name="num"/>
    <xsl:choose>
      <xsl:when test="floor($num) = $num">
        <xsl:value-of select="format-number($num, '###.##0', 'european')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="format-number($num, '###.##0,####', 'european')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>
  <!--Tuannh8_start_style-->
  <xsl:attribute-set name="header">
    <xsl:attribute name="vertical-align">top</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="invoiceName">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="margin-top">2mm</xsl:attribute>
    <xsl:attribute name="space-after">3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="invoiceNameItalic">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-size">9pt</xsl:attribute>
    <!--<xsl:attribute name="font-weight">bold</xsl:attribute>-->
    <xsl:attribute name="font-style">italic</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="margin-top">2mm</xsl:attribute>
    <xsl:attribute name="space-after">3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="titleInvoice">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <!--<xsl:attribute name="font-weight">bold</xsl:attribute>-->
    <xsl:attribute name="font-style">italic</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="space-after">3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="itemNormal">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="itemNormalBlock">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <!--<xsl:attribute name="margin-left">0.3mm</xsl:attribute>-->
    <!--<xsl:attribute name="margin-right">0.3mm</xsl:attribute>-->
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="labelItalicNormal">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-style">italic</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="itemBold">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="itemBoldUppercase">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="text-transform">uppercase</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="labelNormal">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="labelItalic">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-style">italic</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="labelBold">
    <!--<xsl:attribute name="color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="margin-top">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.3mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.3mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="boxLarge">
    <xsl:attribute name="border">4px double</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <!--<xsl:attribute name="border">3pt solid</xsl:attribute>
        <xsl:attribute name="border-color">#4C3F57</xsl:attribute>-->
  </xsl:attribute-set>
  <xsl:attribute-set name="boxSmall">
    <xsl:attribute name="border">0.5pt solid</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <!--<xsl:attribute name="border-color">#4C3F57</xsl:attribute>-->
  </xsl:attribute-set>
  <xsl:attribute-set name="dataInfoInvoice">
    <!--font-size="9pt" space-after="4mm" text-align="left" margin-top="0mm" border="0.5pt solid" border-color="#4C3F57"-->
    <xsl:attribute name="font-size">9pt</xsl:attribute>
    <xsl:attribute name="space-after">4mm</xsl:attribute>
    <xsl:attribute name="text-align">left</xsl:attribute>
    <xsl:attribute name="margin-top">0mm</xsl:attribute>
    <!--        <xsl:attribute name="border">0.5pt solid</xsl:attribute>
        <xsl:attribute name="border-color">#4C3F57</xsl:attribute>-->
  </xsl:attribute-set>
  <xsl:attribute-set name="signature">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="color">#FF0000</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="boxSignature">
    <xsl:attribute name="border-bottom">0.5pt solid</xsl:attribute>
    <xsl:attribute name="border-right">0.5pt solid</xsl:attribute>
    <xsl:attribute name="border-color">#006699</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="boxPdf147">
    <xsl:attribute name="border-bottom">0.5pt solid</xsl:attribute>
    <xsl:attribute name="border-left">0.5pt solid</xsl:attribute>
    <xsl:attribute name="border-color">#006699</xsl:attribute>
  </xsl:attribute-set>



  <xsl:attribute-set name="borderBottom">
    <!--<xsl:attribute name="border-color">#4C3F57</xsl:attribute>-->
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <xsl:attribute name="space-after">3mm</xsl:attribute>
    <xsl:attribute name="border-top">1pt solid</xsl:attribute>
    <xsl:attribute name="margin-top">10mm</xsl:attribute>
    <xsl:attribute name="padding">10mm</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="labelFooter">
    <xsl:attribute name="color">#00919F</xsl:attribute>
    <xsl:attribute name="margin-top">0.5mm</xsl:attribute>
    <xsl:attribute name="margin-left">0.5mm</xsl:attribute>
    <xsl:attribute name="margin-right">0.5mm</xsl:attribute>
    <xsl:attribute name="margin-bottom">0.5mm</xsl:attribute>
  </xsl:attribute-set>
  <!--<xsl:import href="stylefo.xsl"/>-->
  <!--Tuannh8_End_style-->
  <xsl:output indent="yes" method="xml" omit-xml-declaration="no" version="1.0"/>
  <!--<xsl:decimal-format name="decimalFormat" decimal-separator='.' grouping-separator=","/>-->
  <xsl:decimal-format decimal-separator="." grouping-separator="," name="decimalFormat"/>
  <xsl:decimal-format decimal-separator="." grouping-separator="," name="us"/>
  <xsl:decimal-format decimal-separator="," grouping-separator="." name="european"/>
  <xsl:decimal-format NaN="Not a Number" decimal-separator="." digit="#" grouping-separator="," infinity="INFINITY" minus-sign="-" name="example" pattern-separator=";" per-mille="m" percent="%" zero-digit="0"/>
  <xsl:template name="tokenize">
    <xsl:param name="pText"/>
    <xsl:if test="string-length($pText)">
      <xsl:variable name="text">
        <xsl:value-of select="substring-before($pText, ',')"/>
      </xsl:variable>
      <xsl:choose>
        <xsl:when test="substring($text,1,3) = 'CN='">
          <xsl:value-of select="substring-after($text, 'CN=')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="tokenize">
            <xsl:with-param name="pText" select=
       "substring-after($pText, ',')"/>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <!--<xsl:decimal-format name="decimalFormat" grouping-separator=","/>-->
  <!--<xsl:template match="/HDon">-->

  <xsl:template name="loop">
    <xsl:param name="var"></xsl:param>
    <xsl:choose>
      <xsl:when test="$var &lt; 1">
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
            <fo:block text-align="center" xsl:use-attribute-sets="itemNormal">
              <fo:leader />
            </fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
          </fo:table-cell>
        </fo:table-row>
        <xsl:call-template name="loop">
          <xsl:with-param name="var">
            <xsl:number value="number($var)+1" />
          </xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!--<xsl:decimal-format name="decimalFormat" grouping-separator=","/>-->
  <!--<xsl:template match="/HDon">-->
  <xsl:template match="/HDon" name="invoiceTemplate">
    <fo:root font-family="Times New Roman">
      <fo:layout-master-set>

        <fo:simple-page-master master-name="singlePage" margin-bottom="0.2cm" margin-left="0.2cm"
											   margin-right="0.2cm" margin-top="0.2cm" page-height="14.5cm" page-width="20cm">
          <fo:region-body margin-bottom="10mm" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>
          <!--<fo:region-before  extent="60mm" display-align="before" precedence="true" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>-->
          <fo:region-after region-name="footer-first-one" extent="11mm" display-align="after" border-right="3pt double" border-left="3pt double" border-bottom="3pt double"/>
        </fo:simple-page-master>
        <fo:simple-page-master master-name="firstPage" margin-bottom="0.2cm" margin-left="0.2cm"
											   margin-right="0.2cm" margin-top="0.2cm" page-height="14.5cm" page-width="20cm">
          <fo:region-body margin-bottom="13mm" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>
          <!--<fo:region-before extent="60mm" display-align="before" precedence="true" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>-->
          <fo:region-after region-name="footer-first" extent="13mm" display-align="after" border-right="3pt double" border-left="3pt double" border-bottom="3pt double"/>
        </fo:simple-page-master>
        <fo:simple-page-master master-name="middlePage" margin-bottom="0.2cm" margin-left="0.2cm"
											   margin-right="0.2cm" margin-top="0.2cm" page-height="14.5cm" page-width="20cm">
          <fo:region-body margin-bottom="13mm" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>
          <!--<fo:region-before extent="60mm" display-align="before" precedence="true" border-right="3pt double" border-left="3pt double" border-top="3pt double" />-->
          <fo:region-after region-name="footer-rest" extent="13mm" display-align="after" border-right="3pt double" border-left="3pt double" border-bottom="3pt double"/>
        </fo:simple-page-master>
        <fo:simple-page-master master-name="lastPage" margin-bottom="0.2cm" margin-left="0.2cm"
											   margin-right="0.2cm" margin-top="0.2cm" page-height="14.5cm" page-width="20cm">
          <fo:region-body margin-bottom="13mm" border-right="3pt double" border-left="3pt double" border-top="3pt double"/>
          <!--<fo:region-before extent="60mm" display-align="before" precedence="true" border-right="3pt double" border-left="3pt double" border-top="3pt double" />-->
          <fo:region-after region-name="footer-last" extent="13mm" display-align="after" border-right="3pt double" border-left="3pt double" border-bottom="3pt double"/>
        </fo:simple-page-master>

        <fo:page-sequence-master margin-bottom="0.2cm" margin-left="0.2cm" margin-right="0.2cm" margin-top="0.2cm" master-name="document" page-height="14.5cm" page-width="20cm">

          <fo:repeatable-page-master-alternatives>

            <fo:conditional-page-master-reference page-position="only" master-reference="singlePage"/>
            <fo:conditional-page-master-reference page-position="first" master-reference="firstPage"/>
            <fo:conditional-page-master-reference page-position="rest" master-reference="middlePage"/>
            <fo:conditional-page-master-reference page-position="last" master-reference="lastPage"/>

          </fo:repeatable-page-master-alternatives>
        </fo:page-sequence-master>

      </fo:layout-master-set>
      <fo:page-sequence master-reference="document">
        <fo:static-content flow-name="footer-first-one">
          <fo:block font-size="6pt" text-align="right">
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="100%"/>
                <fo:table-header>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-header>
                <fo:table-footer>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-footer>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelNormal" font-style="italic">(C???n ki???m tra, ?????i chi???u khi l???p, giao, nh???n h??a ????n)</fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell border-top="solid">
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelItalic">????n v??? cung c???p d???ch v??? H??a ????n ??i???n t???: T???p ??o??n C??ng nghi???p - Vi???n th??ng Qu??n ?????i (Viettel), MST: 0100109106 </fo:inline>
                      </fo:block>
                      <fo:block text-align="center">
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelItalic">Tra c???u h??a ????n ??i???n t??? t???i Website: https://vinvoice.viettel.vn/utilities/invoice-search M?? s??? b?? m???t: </fo:wrapper>
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelNormal">
                          <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='M?? s??? b?? m???t']/DLieu"/>
                        </fo:wrapper>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
          </fo:block>
        </fo:static-content>

        <fo:static-content flow-name="footer-first">
          <fo:block font-size="6pt" text-align="right">
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="100%"/>
                <fo:table-header>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-header>
                <fo:table-footer>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-footer>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelNormal" font-style="italic">(C???n ki???m tra, ?????i chi???u khi l???p, giao, nh???n h??a ????n)</fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell border-top="solid">
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelItalic">????n v??? cung c???p d???ch v??? H??a ????n ??i???n t???: T???p ??o??n C??ng nghi???p - Vi???n th??ng Qu??n ?????i (Viettel), MST: 0100109106 </fo:inline>
                      </fo:block>
                      <fo:block text-align="center">
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelItalic">Tra c???u h??a ????n ??i???n t??? t???i Website: https://vinvoice.viettel.vn/utilities/invoice-search M?? s??? b?? m???t: </fo:wrapper>
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelNormal">
                          <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='M?? s??? b?? m???t']/DLieu"/>
                        </fo:wrapper>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
            <fo:wrapper xsl:use-attribute-sets="labelFooter">
              Trang <fo:page-number/> / <fo:page-number-citation ref-id="end-of-document"/>
            </fo:wrapper>
          </fo:block>
        </fo:static-content>
        <fo:static-content flow-name="footer-rest">
          <fo:block font-size="6pt" text-align="right">
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="100%"/>
                <fo:table-header>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-header>
                <fo:table-footer>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-footer>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelNormal" font-style="italic">(C???n ki???m tra, ?????i chi???u khi l???p, giao, nh???n h??a ????n)</fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell border-top="solid">
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelItalic">????n v??? cung c???p d???ch v??? H??a ????n ??i???n t???: T???p ??o??n C??ng nghi???p - Vi???n th??ng Qu??n ?????i (Viettel), MST: 0100109106 </fo:inline>
                      </fo:block>
                      <fo:block text-align="center">
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelItalic">Tra c???u h??a ????n ??i???n t??? t???i Website: https://vinvoice.viettel.vn/utilities/invoice-search M?? s??? b?? m???t: </fo:wrapper>
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelNormal">
                          <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='M?? s??? b?? m???t']/DLieu"/>
                        </fo:wrapper>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
            <fo:wrapper xsl:use-attribute-sets="labelFooter">
              tiep theo trang truoc - Trang <fo:page-number/> / <fo:page-number-citation ref-id="end-of-document"/>
            </fo:wrapper>
          </fo:block>
        </fo:static-content>
        <fo:static-content flow-name="footer-last">
          <fo:block font-size="6pt" text-align="right">
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="100%"/>
                <fo:table-header>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-header>
                <fo:table-footer>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block/>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-footer>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelNormal" font-style="italic">(C???n ki???m tra, ?????i chi???u khi l???p, giao, nh???n h??a ????n)</fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell border-top="solid">
                      <fo:block text-align="center">
                        <fo:inline font-size="6pt" xsl:use-attribute-sets="labelItalic">????n v??? cung c???p d???ch v??? H??a ????n ??i???n t???: T???p ??o??n C??ng nghi???p - Vi???n th??ng Qu??n ?????i (Viettel), MST: 0100109106 </fo:inline>
                      </fo:block>
                      <fo:block text-align="center">
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelItalic">Tra c???u h??a ????n ??i???n t??? t???i Website: https://vinvoice.viettel.vn/utilities/invoice-search M?? s??? b?? m???t: </fo:wrapper>
                        <fo:wrapper font-size="6pt" xsl:use-attribute-sets="labelNormal">
                          <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='M?? s??? b?? m???t']/DLieu"/>
                        </fo:wrapper>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
            <fo:wrapper xsl:use-attribute-sets="labelFooter">
              tiep theo trang truoc - Trang <fo:page-number/> / <fo:page-number-citation ref-id="end-of-document"/>
            </fo:wrapper>
          </fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          <fo:table border-collapse="collapse" height="14.5cm" table-layout="fixed" text-align="center" width="100%">
            <!--border="1pt solid black" 2pt solid #4C3F57"-->
            <!--START_NOTHING-->
            
            <fo:table-header>
              <fo:table-row>
                <fo:table-cell  number-columns-spanned="3">
                  <fo:block-container absolute-position="fixed" text-align="center" display-align="center" top="40mm" left="10mm" right="10mm">
                    <fo:block>
                      <fo:external-graphic content-height="scale-to-fit" content-width="scale-to-fit" max-height="8cm" max-width="100%"  scaling="uniform"  src="url('watermark.png')"/>
                    </fo:block>
                  </fo:block-container>
                  <fo:block-container  absolute-position="fixed" text-align="center" display-align="center" top="40mm" left="10mm" right="10mm">
                    <fo:block>
                      <fo:external-graphic content-height="scale-to-fit" content-width="scale-to-fit" max-height="8cm" max-width="100%"  scaling="uniform"  src="url('example.png')"/>
                    </fo:block>
                  </fo:block-container>
                </fo:table-cell>
              </fo:table-row>
			  
			  
			  
			  <fo:table-row >
				  <fo:table-cell number-columns-spanned="3">
					<fo:block  padding-top="3mm">
					  <fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="10%"/>
						<fo:table-column column-width="35%"/>
						<fo:table-column column-width="37%"/>
						<fo:table-column column-width="18%"/>
						<fo:table-body>
						  <fo:table-row>
							<fo:table-cell display-align="left">
							  <fo:block margin-left="1mm" padding-left="0mm">
								<fo:external-graphic content-height="scale-to-fit" max-height="1.5cm"  content-width="scale-to-fit" max-width="150%"  scaling="uniform" src="url('logo.png')">
								</fo:external-graphic>
							  </fo:block>
							</fo:table-cell>

							<fo:table-cell >
							  <fo:block font-size="8pt" text-align="left" xsl:use-attribute-sets="labelNormal">
								<fo:wrapper xsl:use-attribute-sets="labelNormal"> </fo:wrapper>
								<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Issued): </fo:wrapper>-->
								<fo:inline xsl:use-attribute-sets="itemBoldUppercase" >
								  <xsl:value-of select="DLHDon/NDHDon/NBan/Ten"/>
								</fo:inline>
							  </fo:block>
							  <fo:block font-size="8pt" text-align="left" xsl:use-attribute-sets="labelNormal">
								  <fo:wrapper xsl:use-attribute-sets="labelNormal">?????a ch???: </fo:wrapper>
								  <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Address): </fo:wrapper>-->
								  <fo:inline xsl:use-attribute-sets="itemBold">
									<xsl:value-of select="DLHDon/NDHDon/NBan/DChi"/>
								  </fo:inline>
								</fo:block>
							  <fo:block font-size="8pt" text-align="left" xsl:use-attribute-sets="labelNormal">
								<fo:wrapper xsl:use-attribute-sets="labelNormal">M?? s??? thu???: </fo:wrapper>
								<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Tax code): </fo:wrapper>-->
								<fo:inline xsl:use-attribute-sets="itemBold">
								  <xsl:value-of select="DLHDon/NDHDon/NBan/MST"/>
								</fo:inline>
							  </fo:block>
							  
								<fo:block font-size="8pt" text-align="left" xsl:use-attribute-sets="labelNormal">
								<fo:wrapper xsl:use-attribute-sets="labelNormal">??i???n tho???i: </fo:wrapper>
								<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Tax code): </fo:wrapper>-->
								<fo:inline xsl:use-attribute-sets="itemBold">
								  <xsl:value-of select="DLHDon/NDHDon/NBan/SDThoai"/>
								</fo:inline>
							  </fo:block>
							</fo:table-cell>
							
							<fo:table-cell border-collapse="collapse" xsl:use-attribute-sets="header">
							  <fo:block margin-top="1mm" font-size="13pt">
								<fo:inline xsl:use-attribute-sets="invoiceName">H??A ????N B??N H??NG</fo:inline>
							  </fo:block>
							  <fo:block font-size="7pt">
								<fo:inline xsl:use-attribute-sets="itemBold">H??A ????N CHUY???N ?????I T??? H??A ????N ??I???N T???</fo:inline>
							  </fo:block>
							  <fo:block font-size="10pt" xsl:use-attribute-sets="itemNormal">
								<xsl:choose>
								  <xsl:when test="DLHDon/TTChung/NLap!='null'">
									<fo:wrapper xsl:use-attribute-sets="labelNormal">Ng??y </fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(date) </fo:wrapper>-->
									<xsl:value-of select="substring(DLHDon/TTChung/NLap, 9, 2)"/>
									<xsl:text> </xsl:text>
									<fo:wrapper xsl:use-attribute-sets="labelNormal">th??ng </fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(month) </fo:wrapper>-->
									<xsl:value-of select="substring(DLHDon/TTChung/NLap, 6, 2)"/>
									<xsl:text> </xsl:text>
									<fo:wrapper xsl:use-attribute-sets="labelNormal">n??m </fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(year) </fo:wrapper>-->
									<xsl:value-of select="substring(DLHDon/TTChung/NLap, 1, 4)"/>
									<xsl:text> </xsl:text>
									<!--                                                <xsl:value-of select="concat(substring(DLHDon/TTChung/NLap, 9, 2),'/',substring(DLHDon/TTChung/NLap, 6, 2),'/',substring(DLHDon/TTChung/NLap, 1, 4))"/>-->
								  </xsl:when>
								  <xsl:otherwise>
									<fo:wrapper xsl:use-attribute-sets="labelNormal">Ng??y ....</fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(date) ......</fo:wrapper>-->
									<fo:wrapper xsl:use-attribute-sets="labelNormal">th??ng ...</fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(month) ......</fo:wrapper>-->
									<fo:wrapper xsl:use-attribute-sets="labelNormal">n??m ....</fo:wrapper>
									<!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(year) ......</fo:wrapper>-->
									<!--Ng??y ......... Th??ng ......... N??m .........-->
								  </xsl:otherwise>
								</xsl:choose>
							  </fo:block>
							</fo:table-cell>
							
							<fo:table-cell font-size="9pt" text-align="left">
								<fo:block xsl:use-attribute-sets="labelNormal">
								  <fo:wrapper xsl:use-attribute-sets="labelNormal">M???u s???: </fo:wrapper>
								  <xsl:value-of select="DLHDon/TTChung/KHMSHDon"/>
								  <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Form): </fo:wrapper>-->
								</fo:block>
								
								<fo:block xsl:use-attribute-sets="labelNormal">
								  <fo:wrapper xsl:use-attribute-sets="labelNormal">K?? hi???u: </fo:wrapper>
								  <xsl:value-of select="DLHDon/TTChung/KHHDon"/>
								  <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Serial): </fo:wrapper>-->
								</fo:block>
								
								<fo:block xsl:use-attribute-sets="labelNormal">
								  <fo:wrapper xsl:use-attribute-sets="labelNormal">S???: </fo:wrapper>
								  <xsl:value-of select="DLHDon/TTChung/SHDon"/>
								  <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(No.): </fo:wrapper>-->
								</fo:block>
							  </fo:table-cell>
							  
						  </fo:table-row>
						</fo:table-body>
					  </fo:table>
					</fo:block>
				  </fo:table-cell>
				</fo:table-row>
			  
			  
              <fo:table-row xsl:use-attribute-sets="borderBottom">
                <fo:table-cell number-columns-spanned="3"  padding-left="2mm">
                  <fo:block>
                    <fo:table border-collapse="collapse" table-layout="fixed" width="100%">
                      <table-column column-width="100%"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left">
                              <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="55%"/>
								<fo:table-column column-width="25%"/>
								<fo:table-column column-width="20%"/>
                                <fo:table-body>
                                  <fo:table-row>
                                    <fo:table-cell >
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">H??? t??n ng?????i mua h??ng: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <xsl:value-of select="DLHDon/NDHDon/NMua/HVTNMHang"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">Nam (N???): </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
										  <!--<xsl:value-of select="invoiceData/metadata/contrimportAtactNo"/>-->
										  <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='Nam (N???):']/DLieu"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
									<fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">Tu???i: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
										  <!--<xsl:value-of select="invoiceData/metadata/contrimportAtactNo"/>-->
										  <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='Tu???i:']/DLieu"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
						
						<fo:table-row>
                          <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left">
                              <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="55%"/>
								<fo:table-column column-width="25%"/>
								<fo:table-column column-width="20%"/>
                                <fo:table-body>
                                  <fo:table-row>
                                    <fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">T??n ????n v???: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <xsl:value-of select="DLHDon/NDHDon/NMua/TNMua"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
									<fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">M?? BN: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <!--<xsl:value-of select="invoiceData/metadata/contractNo"/>-->
										  <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='M?? BN:']/DLieu"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
									<fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">?????i t?????ng: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <!--<xsl:value-of select="invoiceData/metadata/exportAt"/>-->
										  <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='?????i t?????ng:']/DLieu"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
						<fo:table-row>
                          <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left">
                              <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="55%"/>
                                <fo:table-column column-width="40%"/>   
                                <fo:table-body>
                                  <fo:table-row>
									<fo:table-cell >
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">?????a ch???: </fo:wrapper>
                                        <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Address): </fo:wrapper>-->
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <xsl:value-of select="DLHDon/NDHDon/NMua/DChi"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
									<fo:table-cell>
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">Khoa: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <!--<xsl:value-of select="invoiceData/metadata/buyerCode"/>-->
										  <xsl:value-of select="DLHDon/TTChung/TTKhac/TTin[TTruong='Khoa:']/DLieu"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                    
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
						<fo:table-row>
                          <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left">
                              <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="55%"/>
                                <fo:table-column column-width="40%"/>   
                                <fo:table-body>
                                  <fo:table-row>
                                    <fo:table-cell >
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">M?? s??? thu???: </fo:wrapper>
                                        <!--<fo:wrapper  xsl:use-attribute-sets="labelItalic">(Tax code): </fo:wrapper>-->
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <xsl:value-of select="DLHDon/NDHDon/NMua/MST"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
									<fo:table-cell >
                                      <fo:block font-size="9pt" text-align="left" xsl:use-attribute-sets="labelNormal">
                                        <fo:wrapper xsl:use-attribute-sets="labelNormal">H??nh th???c thanh to??n: </fo:wrapper>
                                        <fo:inline xsl:use-attribute-sets="itemBold">
                                          <xsl:value-of select="DLHDon/TTChung/HTTToan"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-header>
            <!--END_NOTHING-->
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell number-columns-spanned="3">
                  <fo:block font-size="8pt">
                    <fo:table border-collapse="collapse" table-layout="fixed" width="100%">
                      <fo:table-column column-width="5%"/>
                      <fo:table-column column-width="55%"/>
                      <fo:table-column column-width="10%"/>
                      <fo:table-column column-width="8%"/>
                      <fo:table-column column-width="10%"/>
                      <fo:table-column column-width="12%"/>
                      <fo:table-header width="100%">
                        <fo:table-row>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block xsl:use-attribute-sets="labelBold">STT </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(No.) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block  xsl:use-attribute-sets="labelBold">T??n h??ng h??a, d???ch v??? </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(Description) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block  xsl:use-attribute-sets="labelBold">????n v??? t??nh </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(Unit) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block  xsl:use-attribute-sets="labelBold">S??? l?????ng </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(SLuong) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block  xsl:use-attribute-sets="labelBold">????n gi?? </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(Unit price) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center">
                              <fo:block  xsl:use-attribute-sets="labelBold">Th??nh ti???n </fo:block>
                              <!--<fo:block  xsl:use-attribute-sets="labelItalic">(Amount) </fo:block>-->
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row font-weight="bold">
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>1</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>2</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>3</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>4</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>5</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell xsl:use-attribute-sets="boxSmall">
                            <fo:block text-align="center" xsl:use-attribute-sets="labelItalicNormal">
                              <xsl:text>6 = 4 x 5</xsl:text>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-header>
                      <fo:table-footer>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block/>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-footer>
                      <fo:table-body>
                        <xsl:for-each select="DLHDon/NDHDon/DSHHDVu/HHDVu">
                           <fo:table-row keep-together.within-page="always">
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="center" xsl:use-attribute-sets="itemNormal">
                                    <xsl:choose>
                                      <xsl:when test="STT &gt; 0">
                                        <xsl:value-of select="STT"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <fo:leader />
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="left" xsl:use-attribute-sets="itemNormal">
                                    <xsl:value-of select="THHDVu"/>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="center" xsl:use-attribute-sets="itemNormal">
                                    <!--<xsl:value-of select="DVTinh"/>-->
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="center" xsl:use-attribute-sets="itemNormal">
                                    <!--<xsl:choose>
                                      <xsl:when test="SLuong = null">
                                      </xsl:when>
                                      <xsl:when test="string-length(SLuong) = 0">
                                      </xsl:when>
                                      <xsl:when test="floor(SLuong) = SLuong">
                                        <xsl:value-of select="format-number(SLuong, '###.##0', 'european')"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <xsl:value-of select="format-number(SLuong, '###.##0,####', 'european')"/>
                                      </xsl:otherwise>
                                    </xsl:choose>-->
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="right" xsl:use-attribute-sets="itemNormal">
                                    <!--<xsl:if test="DGia != 'null' and DGia &gt; 0">
                                      <xsl:choose>
                                        <xsl:when test="floor(DGia) = DGia">
                                          <xsl:value-of select="format-number(DGia, '###.##0', 'european')"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <xsl:value-of select="format-number(DGia, '###.##0,####', 'european')"/>
                                        </xsl:otherwise>
                                      </xsl:choose>
                                    </xsl:if>-->
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="boxSmall" display-align="center">
                                  <fo:block text-align="right" xsl:use-attribute-sets="itemNormal">
                                    <xsl:if test="ThTien != 'null' and ThTien &gt; 0">
                                      <xsl:choose>
                                        <xsl:when test="floor(ThTien) = ThTien">
                                          <xsl:value-of select="format-number(ThTien, '###.##0', 'european')"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <xsl:value-of select="format-number(ThTien, '###.##0,####', 'european')"/>
                                        </xsl:otherwise>
                                      </xsl:choose>
                                    </xsl:if>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                        </xsl:for-each>
                        <xsl:call-template name="loop">
                          <xsl:with-param name="var">
                            <xsl:value-of select="count(//DLHDon/NDHDon/DSHHDVu/HHDVu)"/>
                          </xsl:with-param>
                        </xsl:call-template>
                        <fo:table-row keep-together.within-page="always"	>
                          <fo:table-cell number-columns-spanned="6">
                            <fo:table table-layout="fixed" width="100%">
                              <fo:table-column column-width="88%"/>
                              <fo:table-column column-width="12%"/>
                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border-left="0.5pt solid" border-right="0.5pt solid" border-bottom="0.5pt solid">
                                    <fo:block text-align="right" xsl:use-attribute-sets="itemNormal">
                                      <fo:wrapper xsl:use-attribute-sets="labelBold">T???ng c???ng ti???n thanh to??n: </fo:wrapper>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border-left="0.5pt solid" border-right="0.5pt solid" border-bottom="0.5pt solid">
                                    <fo:block text-align="right" xsl:use-attribute-sets="itemNormal">
                                      <xsl:if test="DLHDon/NDHDon/TToan /TgTTTBSo != 'null' and DLHDon/NDHDon/TToan /TgTTTBSo &gt; 0">
                                        <xsl:value-of select="format-number(DLHDon/NDHDon/TToan /TgTTTBSo, '###.##0,####', 'european')"/>
                                      </xsl:if>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell number-columns-spanned="2" xsl:use-attribute-sets="boxSmall">
                                    <fo:block text-align="left" xsl:use-attribute-sets="itemNormal">
                                      <fo:wrapper xsl:use-attribute-sets="labelBold">S??? ti???n vi???t b???ng ch???: </fo:wrapper>
                                      <fo:inline xsl:use-attribute-sets="itemNormal">
                                        <xsl:value-of select="DLHDon/NDHDon/TToan /TgTTTBChu"/>
                                      </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row >
                                  <fo:table-cell number-columns-spanned="2">
                                    <fo:block  padding-top="1mm">
                                      <fo:table table-layout="fixed" width="100%">
                                        <fo:table-column column-width="25%"/>
                                        <fo:table-column column-width="25%"/>
                                        <fo:table-column column-width="25%"/>
										<fo:table-column column-width="25%"/>
                                        <fo:table-body>
                                          <fo:table-row>
                                            <fo:table-cell>
                                              <fo:block text-align="center">
                                                <fo:wrapper font-size="9pt" font-weight="bold">Ng?????i mua h??ng </fo:wrapper>
                                              </fo:block>
                                              <fo:block text-align="center"  display-align="center">
                                                <fo:block padding-top="7px" margin-top="7px">
                                                </fo:block>
                                                <fo:block xsl:use-attribute-sets="signature">
                                                  <xsl:if test="not((//*[local-name()='X509SubjectName'])[2]) = false and (//*[local-name()='X509SubjectName'])[2] != ''">
                                                    <fo:block-container absolute-position="absolute" text-align="center" left="1mm" right="1mm" top="3mm">
                                                      <fo:block>
                                                        <fo:external-graphic content-height="scale-to-fit" content-width="scale-to-fit" max-height="1.6cm" max-width="100%"  scaling="uniform"  src="url('signature.png')"/>
                                                      </fo:block>
                                                    </fo:block-container>
                                                    <fo:block xsl:use-attribute-sets="signature">
                                                      K?? b???i <xsl:call-template name="tokenize">
                                                        <xsl:with-param name="pText" select="(//*[local-name()='X509SubjectName'])[2]"/>
                                                      </xsl:call-template>
                                                    </fo:block>
													<fo:block  xsl:use-attribute-sets="signature">
                                                        K?? ng??y
                                                        <xsl:if test="DLHDon/TTChung/NLap != 'null' and DLHDon/TTChung/NLap != ''">
                                                          <xsl:value-of select="concat(substring(DLHDon/TTChung/NLap, 9, 2),'/',substring(DLHDon/TTChung/NLap, 6, 2),'/',substring(DLHDon/TTChung/NLap, 1, 4))"/>
                                                        </xsl:if>
                                                      </fo:block>
                                                  </xsl:if>
                                                </fo:block>
                                              </fo:block>
                                            </fo:table-cell>

											<fo:table-cell>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">1. T???ng chi ph??: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='1. T???ng chi ph??:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='1. T???ng chi ph??:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='1. T???ng chi ph??:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">2. BN t???m ???ng: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='2. BN t???m ???ng:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='2. BN t???m ???ng:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='2. BN t???m ???ng:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">3. Thu th??m: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='3. Thu th??m:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='3. Thu th??m:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='3. Thu th??m:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">4. Ho??n ???ng: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='4. Ho??n ???ng:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='4. Ho??n ???ng:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='4. Ho??n ???ng:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>

                                            </fo:table-cell>
											
											<fo:table-cell>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">5. % BHYT thanh to??n: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='5. % BHYT thanh to??n:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='5. % BHYT thanh to??n:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='5. % BHYT thanh to??n:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">6. % BN c??ng chi tr???: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='6. % BN c??ng chi tr???:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='6. % BN c??ng chi tr???:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='6. % BN c??ng chi tr???:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
												<fo:block text-align="left">
													<fo:wrapper font-size="10pt" font-weight="bold">7. B???nh nh??n TT: </fo:wrapper>
													<fo:inline xsl:use-attribute-sets="itemNormal">
													<xsl:if test="DLHDon/TTChung/TTKhac/TTin[TTruong='7. B???nh nh??n TT:']/DLieu != 'null' and DLHDon/TTChung/TTKhac/TTin[TTruong='7. B???nh nh??n TT:']/DLieu &gt; 0">
														<xsl:value-of select="format-number(DLHDon/TTChung/TTKhac/TTin[TTruong='7. B???nh nh??n TT:']/DLieu, '###.##0,####', 'european')"/>                                  
													</xsl:if>
													</fo:inline>
												</fo:block>
                                            </fo:table-cell>
											
											
                                            <fo:table-cell>
                                              <fo:block text-align="center">
                                                <fo:wrapper font-size="9pt" font-weight="bold">Ng?????i b??n h??ng </fo:wrapper>
                                              </fo:block>
                                              <fo:block text-align="center"  display-align="center">
                                                <fo:block padding-top="7px" margin-top="7px">
                                                </fo:block>

												<fo:block-container absolute-position="absolute" text-align="center" left="1mm" right="1mm" top="2.5mm">
                                                  <fo:block>
                                                    <fo:external-graphic content-height="scale-to-fit" content-width="scale-to-fit" max-height="1,6cm" max-width="83%"  scaling="uniform"  src="url('signature.png')"/>
                                                  </fo:block>
                                                </fo:block-container>
												

                                                <fo:block xsl:use-attribute-sets="signature">
                                                   <xsl:if test="DLHDon/NDHDon/NBan/Ten != 'null'">
													<fo:block xsl:use-attribute-sets="signature">
													  K?? b???i <xsl:call-template name="tokenize">
														<xsl:with-param name="pText" select="(//*[local-name()='X509SubjectName'])[1]"/>
													  </xsl:call-template>
													</fo:block>
													<fo:block  xsl:use-attribute-sets="signature">
														K?? ng??y
														<xsl:if test="DLHDon/TTChung/NLap != 'null' and DLHDon/TTChung/NLap != ''">
														  <xsl:value-of select="concat(substring(DLHDon/TTChung/NLap, 9, 2),'/',substring(DLHDon/TTChung/NLap, 6, 2),'/',substring(DLHDon/TTChung/NLap, 1, 4))"/>
														</xsl:if>
													  </fo:block>
														</xsl:if>
                                                </fo:block>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
										  
										  
										  
											<fo:table-row >
											<fo:table-cell>
                                                <fo:block text-align="center">
                                                  <fo:wrapper  xsl:use-attribute-sets="labelBold">Ng?????i chuy???n ?????i </fo:wrapper>
                                                  <fo:wrapper  xsl:use-attribute-sets="labelItalic">(Exchanged by)</fo:wrapper>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:inline  xsl:use-attribute-sets="labelItalic">(K??, ghi r?? h??? t??n)</fo:inline>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:inline  xsl:use-attribute-sets="labelItalic">(Sign, full name)</fo:inline>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:inline>????????</fo:inline>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:inline>????????</fo:inline>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:inline xsl:use-attribute-sets="labelNormal">${exchangeUser}</fo:inline>
                                                </fo:block>
                                                <fo:block text-align="center">
                                                  <fo:wrapper  xsl:use-attribute-sets="labelBold">Ng??y chuy???n ?????i </fo:wrapper>
                                                  <fo:wrapper xsl:use-attribute-sets="labelItalic">(Exchange date):</fo:wrapper>
                                                  <fo:block xsl:use-attribute-sets="labelNormal">${exchangeDay}/${exchangeMonth}/${exchangeYear}</fo:block>
                                                </fo:block>
                                              </fo:table-cell>
											</fo:table-row>						  
                                        </fo:table-body>
                                      </fo:table>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                              </fo:table-body>
                            </fo:table>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block id="end-of-document"></fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
