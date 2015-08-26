<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
>

<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="stundenplan_betriebsmittel">
<office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:officeooo="http://openoffice.org/2009/office" xmlns:tableooo="http://openoffice.org/2009/table" xmlns:drawooo="http://openoffice.org/2010/draw" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0" xmlns:css3t="http://www.w3.org/TR/css3-text/" office:version="1.2">
  <office:scripts/>
  <office:font-face-decls>
    <style:font-face style:name="DejaVu Sans1" svg:font-family="'DejaVu Sans'" style:font-family-generic="swiss"/>
    <style:font-face style:name="Liberation Serif" svg:font-family="'Liberation Serif'" style:font-family-generic="roman" style:font-pitch="variable"/>
    <style:font-face style:name="Liberation Sans" svg:font-family="'Liberation Sans'" style:font-family-generic="swiss" style:font-pitch="variable"/>
    <style:font-face style:name="DejaVu Sans" svg:font-family="'DejaVu Sans'" style:font-family-generic="system" style:font-pitch="variable"/>
    <style:font-face style:name="Droid Sans Fallback" svg:font-family="'Droid Sans Fallback'" style:font-family-generic="system" style:font-pitch="variable"/>
  </office:font-face-decls>
  <office:automatic-styles>
    <style:style style:name="Tabelle1" style:family="table">
      <style:table-properties style:width="17.992cm" fo:margin-left="-0.496cm" table:align="left" style:shadow="none"/>
    </style:style>
    <style:style style:name="Tabelle1.A" style:family="table-column">
      <style:table-column-properties style:column-width="1.307cm"/>
    </style:style>
    <style:style style:name="Tabelle1.B" style:family="table-column">
      <style:table-column-properties style:column-width="1.388cm"/>
    </style:style>
    <style:style style:name="Tabelle1.C" style:family="table-column">
      <style:table-column-properties style:column-width="1.803cm"/>
    </style:style>
    <style:style style:name="Tabelle1.D" style:family="table-column">
      <style:table-column-properties style:column-width="5.597cm"/>
    </style:style>
    <style:style style:name="Tabelle1.E" style:family="table-column">
      <style:table-column-properties style:column-width="5.399cm"/>
    </style:style>
    <style:style style:name="Tabelle1.F" style:family="table-column">
      <style:table-column-properties style:column-width="3.406cm"/>
    </style:style>
    <style:style style:name="Tabelle1.G" style:family="table-column">
      <style:table-column-properties style:column-width="3.092cm"/>
    </style:style>
    <style:style style:name="Tabelle1.A1" style:family="table-cell">
      <style:table-cell-properties fo:padding="0.097cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
    </style:style>
    <style:style style:name="Tabelle1.A2" style:family="table-cell">
      <style:table-cell-properties fo:padding="0.097cm" fo:border="none"/>
    </style:style>
    <style:style style:name="Tabelle1.A4" style:family="table-cell">
      <style:table-cell-properties fo:padding="0.097cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
    </style:style>
    <style:style style:name="P1" style:family="paragraph" style:parent-style-name="Standard">
      <style:text-properties fo:font-size="14pt" fo:font-weight="bold" officeooo:rsid="0014ccd2" officeooo:paragraph-rsid="0014ccd2" style:font-size-asian="14pt" style:font-weight-asian="bold" style:font-size-complex="14pt" style:font-weight-complex="bold"/>
    </style:style>
    <style:style style:name="P2" style:family="paragraph" style:parent-style-name="Table_20_Contents">
      <style:text-properties fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt"/>
    </style:style>
    <style:style style:name="P3" style:family="paragraph" style:parent-style-name="Table_20_Contents">
      <style:text-properties fo:font-size="12pt" officeooo:rsid="0014ccd2" officeooo:paragraph-rsid="0014ccd2" style:font-size-asian="12pt" style:font-size-complex="12pt"/>
    </style:style>
    <style:style style:name="P4" style:family="paragraph" style:parent-style-name="Table_20_Contents">
      <style:text-properties fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
    </style:style>
    <style:style style:name="P5" style:family="paragraph" style:parent-style-name="Table_20_Contents">
      <style:text-properties fo:font-size="10pt" officeooo:rsid="0014ccd2" officeooo:paragraph-rsid="0014ccd2" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
    </style:style>
    <style:style style:name="P6" style:family="paragraph" style:parent-style-name="Table_20_Contents">
      <style:text-properties fo:font-size="8pt" fo:font-weight="bold" officeooo:rsid="0014ccd2" officeooo:paragraph-rsid="0014ccd2" style:font-size-asian="10pt" style:font-weight-asian="bold" style:font-size-complex="10pt" style:font-weight-complex="bold"/>
    </style:style>
    <style:style style:name="fr1" style:family="graphic" style:parent-style-name="Graphics">
      <style:graphic-properties style:vertical-pos="from-top" style:vertical-rel="paragraph" style:horizontal-pos="from-left" style:horizontal-rel="paragraph" style:mirror="none" fo:clip="rect(0cm, 0cm, 0cm, 0cm)" draw:luminance="0%" draw:contrast="0%" draw:red="0%" draw:green="0%" draw:blue="0%" draw:gamma="100%" draw:color-inversion="false" draw:image-opacity="100%" draw:color-mode="standard"/>
    </style:style>
    <style:style style:name="PBreak" style:family="paragraph" style:parent-style-name="Standard">
      <style:paragraph-properties fo:line-height="130%" fo:text-align="justify" style:justify-single-word="false" fo:break-before="page"/>
      <style:text-properties fo:font-size="8pt" style:font-size-asian="8pt" style:font-name-complex="Arial" style:font-size-complex="8pt"/>
    </style:style>
  </office:automatic-styles>
  <office:body>
    <office:text>
      <text:sequence-decls>
        <text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Table"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Text"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
      </text:sequence-decls>
		<xsl:apply-templates select="tage"/>
    </office:text>
  </office:body>
</office:document-content>
</xsl:template>

<xsl:template match="tage">
      <text:p text:style-name="PBreak"/>
      <text:p text:style-name="P1"  xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:officeooo="http://openoffice.org/2009/office" xmlns:tableooo="http://openoffice.org/2009/table" xmlns:drawooo="http://openoffice.org/2010/draw" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0" xmlns:css3t="http://www.w3.org/TR/css3-text/" office:version="1.2">
			<draw:frame draw:style-name="fr1" draw:name="Bild1" text:anchor-type="paragraph" svg:x="11.65cm" svg:y="-0.062cm" svg:width="5.038cm" svg:height="1.863cm" draw:z-index="0"><draw:image xlink:href="Pictures/10000201000000DE00000052E8F34E25.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/></draw:frame>
			Ressourcen am <xsl:value-of select="datum"/>
		</text:p>
      <text:p text:style-name="P1"/>
      <text:p text:style-name="P1"/>
      <text:p text:style-name="P1"/>
      <text:p text:style-name="P1"/>
      <table:table table:name="Tabelle1" table:style-name="Tabelle1">
        <table:table-column table:style-name="Tabelle1.A"/>
        <table:table-column table:style-name="Tabelle1.B"/>
        <table:table-column table:style-name="Tabelle1.C"/>
        <table:table-column table:style-name="Tabelle1.D"/>
        <table:table-column table:style-name="Tabelle1.E"/>
        <table:table-column table:style-name="Tabelle1.F"/>
        <table:table-row>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">von</text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">bis</text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">Raum</text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">Lehrveranstaltung</text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">Ressource</text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
            <text:p text:style-name="P6">geliefert/retour</text:p>
          </table:table-cell>
        </table:table-row>

		<xsl:apply-templates select="lehreinheit"/>

      </table:table>

</xsl:template>

<xsl:template match="lehreinheit">
        <table:table-row>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
            <text:p text:style-name="P5"><xsl:value-of select="./stunde[1]/item/stunde_beginn"/></text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
            <text:p text:style-name="P5"><xsl:value-of select="./stunde[last()]/item/stunde_ende"/></text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
            <text:p text:style-name="P6"><xsl:value-of select="./stunde[1]/item/ort_kurzbz"/></text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
            <text:p text:style-name="P5"><xsl:value-of select="./stunde[1]/item[1]/lvbezeichnung"/></text:p>
			<text:p text:style-name="P5">Studiengang: <xsl:value-of select="./stunde[1]/item[1]/studiengang_kurzbzlang"/></text:p>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
		
				<xsl:for-each select="stunde/item/beschreibung[not(.=../../preceding-sibling::*/item/beschreibung)]">
					<xsl:if test="string(.)">
						<text:p text:style-name="P6">
						 <xsl:value-of select="."/>
						</text:p>
					</xsl:if>
				</xsl:for-each>
				<xsl:for-each select="stunde/item/anmerkung[not(.=../../preceding-sibling::*/item/anmerkung)]">
					<xsl:if test="string(.)">
						<text:p text:style-name="P5">
						 <xsl:value-of select="."/>
						</text:p>
					</xsl:if>
				</xsl:for-each>

          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
            <text:p text:style-name="P4"/>
          </table:table-cell>
        </table:table-row>

        <table:table-row>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P5"/>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P5"/>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P6"/>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P5"/>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P6"/>
          </table:table-cell>
          <table:table-cell table:style-name="Tabelle1.A4" office:value-type="string">
            <text:p text:style-name="P4"/>
          </table:table-cell>
        </table:table-row>
</xsl:template>
</xsl:stylesheet>
