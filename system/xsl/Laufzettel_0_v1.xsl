<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="laufzettel_prestudenten">

<office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:officeooo="http://openoffice.org/2009/office" xmlns:tableooo="http://openoffice.org/2009/table" xmlns:drawooo="http://openoffice.org/2010/draw" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0" xmlns:css3t="http://www.w3.org/TR/css3-text/" office:version="1.2">
	<office:scripts/>
	<office:font-face-decls>
		<style:font-face style:name="Mangal1" svg:font-family="Mangal"/>
		<style:font-face style:name="Arial" svg:font-family="Arial" style:font-family-generic="swiss"/>
		<style:font-face style:name="Liberation Serif" svg:font-family="&apos;Liberation Serif&apos;" style:font-family-generic="roman" style:font-pitch="variable"/>
		<style:font-face style:name="Arial1" svg:font-family="Arial" style:font-family-generic="swiss" style:font-pitch="variable"/>
		<style:font-face style:name="Liberation Sans" svg:font-family="&apos;Liberation Sans&apos;" style:font-family-generic="swiss" style:font-pitch="variable"/>
		<style:font-face style:name="Mangal" svg:font-family="Mangal" style:font-family-generic="system" style:font-pitch="variable"/>
		<style:font-face style:name="Microsoft YaHei" svg:font-family="&apos;Microsoft YaHei&apos;" style:font-family-generic="system" style:font-pitch="variable"/>
		<style:font-face style:name="SimSun" svg:font-family="SimSun" style:font-family-generic="system" style:font-pitch="variable"/>
	</office:font-face-decls>
	<office:automatic-styles>
		<style:style style:name="Tabelle1" style:family="table">
			<style:table-properties style:width="17cm" fo:margin-top="0.049cm" fo:margin-bottom="0.049cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle1.A" style:family="table-column">
			<style:table-column-properties style:column-width="2.6cm" style:rel-column-width="10022*"/>
		</style:style>
		<style:style style:name="Tabelle1.B" style:family="table-column">
			<style:table-column-properties style:column-width="9.6cm" style:rel-column-width="37008*"/>
		</style:style>
		<style:style style:name="Tabelle1.C" style:family="table-column">
			<style:table-column-properties style:column-width="2.2cm" style:rel-column-width="8481*"/>
		</style:style>
		<style:style style:name="Tabelle1.D" style:family="table-column">
			<style:table-column-properties style:column-width="2.6cm" style:rel-column-width="10023*"/>
		</style:style>
		<style:style style:name="Tabelle1.A1" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="0.05pt solid #808080" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle1.B1" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="none" fo:border-right="none" fo:border-top="0.05pt solid #808080" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle1.D1" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="none" fo:border-right="0.05pt solid #808080" fo:border-top="0.05pt solid #808080" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle1.A2" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle1.B2" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle1.D2" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="none" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle1.A3" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="none" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle1.B3" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle1.D3" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0.049cm" fo:padding-bottom="0.049cm" fo:border-left="none" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle2" style:family="table">
			<style:table-properties style:width="17cm" fo:margin-top="0.049cm" fo:margin-bottom="0.049cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle2.A" style:family="table-column">
			<style:table-column-properties style:column-width="17cm" style:rel-column-width="65535*"/>
		</style:style>
		<style:style style:name="Tabelle2.A1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.5pt solid #808080" fo:border-right="0.5pt solid #808080" fo:border-top="0.5pt solid #808080" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Tabelle2.2" style:family="table-row">
			<style:table-row-properties style:row-height="3cm"/>
		</style:style>
		<style:style style:name="Tabelle2.A2" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.5pt solid #808080" fo:border-right="0.5pt solid #808080" fo:border-top="none" fo:border-bottom="0.5pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle3" style:family="table">
			<style:table-properties style:width="17cm" fo:margin-top="0.049cm" fo:margin-bottom="0.049cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle3.A" style:family="table-column">
			<style:table-column-properties style:column-width="6.001cm" style:rel-column-width="23132*"/>
		</style:style>
		<style:style style:name="Tabelle3.B" style:family="table-column">
			<style:table-column-properties style:column-width="11cm" style:rel-column-width="42403*"/>
		</style:style>
		<style:style style:name="Tabelle3.A1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="0.05pt solid #808080" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle3.B1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="none" fo:border-right="0.05pt solid #808080" fo:border-top="0.05pt solid #808080" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4" style:family="table">
			<style:table-properties style:width="17cm" fo:margin-top="0.049cm" fo:margin-bottom="0.199cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle4.A" style:family="table-column">
			<style:table-column-properties style:column-width="1.199cm" style:rel-column-width="4623*"/>
		</style:style>
		<style:style style:name="Tabelle4.B" style:family="table-column">
			<style:table-column-properties style:column-width="4.2cm" style:rel-column-width="16189*"/>
		</style:style>
		<style:style style:name="Tabelle4.C" style:family="table-column">
			<style:table-column-properties style:column-width="0.499cm" style:rel-column-width="1924*"/>
		</style:style>
		<style:style style:name="Tabelle4.D" style:family="table-column">
			<style:table-column-properties style:column-width="0.3cm" style:rel-column-width="1155*"/>
		</style:style>
		<style:style style:name="Tabelle4.F" style:family="table-column">
			<style:table-column-properties style:column-width="4.5cm" style:rel-column-width="17345*"/>
		</style:style>
		<style:style style:name="Tabelle4.I" style:family="table-column">
			<style:table-column-properties style:column-width="2.15cm" style:rel-column-width="8288*"/>
		</style:style>
		<style:style style:name="Tabelle4.J" style:family="table-column">
			<style:table-column-properties style:column-width="2.155cm" style:rel-column-width="8309*"/>
		</style:style>
		<style:style style:name="Tabelle4.A1" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="1pt solid #000000" fo:border-right="none" fo:border-top="1pt solid #000000" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.B1" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="1pt solid #000000" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C1" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="1pt solid #000000" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.D1" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.H1" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I1" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="" fo:background-color="transparent" fo:padding-left="0cm" fo:padding-right="0cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none">
				<style:background-image/>
			</style:table-cell-properties>
		</style:style>
		<style:style style:name="Tabelle4.B2" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C2" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F2" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G2" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H2" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B3" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C3" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F3" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G3" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H3" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.F4" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G4" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H4" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B5" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C5" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F5" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G5" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H5" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B6" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C6" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F6" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G6" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H6" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B7" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C7" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H7" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B8" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C8" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F8" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G8" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H8" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.F9" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G9" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H9" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B10" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C10" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F10" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G10" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H10" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I10" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.J10" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.B11" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C11" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F11" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G11" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H11" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I11" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4.B12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H12" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4.J12" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4.B13" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C13" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.E13" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.F13" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G13" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H13" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I13" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4.C14" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="0.05pt solid #000000" fo:border-top="1pt solid #000000" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.D14" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="0.05pt solid #000000" fo:border-top="1pt solid #000000" fo:border-bottom="0.05pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H14" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I14" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle4.B15" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.C15" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="0.05pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.D15" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="none" fo:border-right="none" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.G15" style:family="table-cell">
			<style:table-cell-properties style:vertical-align="middle" fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #000000" fo:border-right="1pt solid #000000" fo:border-top="none" fo:border-bottom="1pt solid #000000"/>
		</style:style>
		<style:style style:name="Tabelle4.H15" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle4.I15" style:family="table-cell">
			<style:table-cell-properties fo:padding-left="0.101cm" fo:padding-right="0.101cm" fo:padding-top="0cm" fo:padding-bottom="0cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle7" style:family="table">
			<style:table-properties style:width="4.105cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle7.A" style:family="table-column">
			<style:table-column-properties style:column-width="1.499cm" style:rel-column-width="23948*"/>
		</style:style>
		<style:style style:name="Tabelle7.B" style:family="table-column">
			<style:table-column-properties style:column-width="2.605cm" style:rel-column-width="41587*"/>
		</style:style>
		<style:style style:name="Tabelle7.A1" style:family="table-cell">
			<style:table-cell-properties fo:background-color="#c0c0c0" fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="0.05pt solid #808080" fo:border-bottom="0.05pt solid #808080">
				<style:background-image/>
			</style:table-cell-properties>
		</style:style>
		<style:style style:name="Tabelle7.B1" style:family="table-cell">
			<style:table-cell-properties fo:background-color="#c0c0c0" fo:padding="0.097cm" fo:border="0.05pt solid #808080">
				<style:background-image/>
			</style:table-cell-properties>
		</style:style>
		<style:style style:name="Tabelle7.A2" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle7.B2" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle7.A3" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle7.B3" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.05pt solid #808080" fo:border-right="0.05pt solid #808080" fo:border-top="none" fo:border-bottom="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle5" style:family="table">
			<style:table-properties style:width="17cm" fo:margin-top="0.101cm" fo:margin-bottom="0.199cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle5.A" style:family="table-column">
			<style:table-column-properties style:column-width="17cm" style:rel-column-width="65535*"/>
		</style:style>
		<style:style style:name="Tabelle5.1" style:family="table-row">
			<style:table-row-properties style:row-height="1.401cm"/>
		</style:style>
		<style:style style:name="Tabelle5.A1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border="0.05pt solid #808080"/>
		</style:style>
		<style:style style:name="Tabelle6" style:family="table">
			<style:table-properties style:width="17cm" table:align="margins"/>
		</style:style>
		<style:style style:name="Tabelle6.A" style:family="table-column">
			<style:table-column-properties style:column-width="1cm" style:rel-column-width="3855*"/>
		</style:style>
		<style:style style:name="Tabelle6.B" style:family="table-column">
			<style:table-column-properties style:column-width="4.001cm" style:rel-column-width="15421*"/>
		</style:style>
		<style:style style:name="Tabelle6.D" style:family="table-column">
			<style:table-column-properties style:column-width="7.999cm" style:rel-column-width="30838*"/>
		</style:style>
		<style:style style:name="Tabelle6.A1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border="none"/>
		</style:style>
		<style:style style:name="Tabelle6.B1" style:family="table-cell">
			<style:table-cell-properties fo:padding="0.097cm" fo:border-left="none" fo:border-right="none" fo:border-top="0.05pt solid #808080" fo:border-bottom="none"/>
		</style:style>
		<style:style style:name="Seitenumbruch" style:family="paragraph" style:parent-style-name="Standard">
			<style:paragraph-properties fo:break-before="page"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P1" style:family="paragraph" style:parent-style-name="Standard">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P2" style:family="paragraph" style:parent-style-name="Standard">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0020d407" officeooo:paragraph-rsid="0020d407" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P3" style:family="paragraph" style:parent-style-name="Standard">
			<style:paragraph-properties fo:line-height="150%"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="002fd20a" officeooo:paragraph-rsid="002fd20a" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P4" style:family="paragraph" style:parent-style-name="Standard">
			<style:paragraph-properties fo:line-height="100%"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="002fd20a" officeooo:paragraph-rsid="002fd20a" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P5" style:family="paragraph" style:parent-style-name="Standard">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="12pt" fo:font-weight="bold" officeooo:rsid="0020d407" officeooo:paragraph-rsid="0020d407" style:font-size-asian="12pt" style:font-weight-asian="bold" style:font-size-complex="12pt" style:font-weight-complex="bold"/>
		</style:style>
		<style:style style:name="P6" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P7" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0020d407" officeooo:paragraph-rsid="0020d407" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P8" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="end" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0020d407" officeooo:paragraph-rsid="0020d407" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P9" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="end" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P10" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="00213b46" officeooo:paragraph-rsid="00213b46" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P11" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0021e8f6" officeooo:paragraph-rsid="0021e8f6" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P12" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties>
				<style:tab-stops>
					<style:tab-stop style:position="5.001cm"/>
				</style:tab-stops>
			</style:paragraph-properties>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0021e8f6" officeooo:paragraph-rsid="0021e8f6" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P13" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:line-height="150%"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="0022a954" officeooo:paragraph-rsid="0022a954" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P14" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:line-height="150%"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P15" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" officeooo:rsid="002fd20a" officeooo:paragraph-rsid="002fd20a" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P16" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
		</style:style>
		<style:style style:name="P17" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="10pt" fo:font-weight="bold" officeooo:rsid="0020d407" officeooo:paragraph-rsid="0020d407" style:font-size-asian="10pt" style:font-weight-asian="bold" style:font-size-complex="10pt" style:font-weight-complex="bold"/>
		</style:style>
		<style:style style:name="P18" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P19" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="00260ada" officeooo:paragraph-rsid="00260ada" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P20" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="00257f5d" officeooo:paragraph-rsid="00257f5d" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P21" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="0026beb5" officeooo:paragraph-rsid="0026beb5" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P22" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="00290639" officeooo:paragraph-rsid="00290639" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P23" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="002a150b" officeooo:paragraph-rsid="0031545e" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P24" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="0031545e" officeooo:paragraph-rsid="0031545e" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P25" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="0031545e" officeooo:paragraph-rsid="0031545e" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P26" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="start" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="0031ac5e" officeooo:paragraph-rsid="0031ac5e" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P27" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="start" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P28" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="start" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="003375c5" officeooo:paragraph-rsid="003375c5" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P29" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="8pt" officeooo:rsid="003375c5" officeooo:paragraph-rsid="003375c5" style:font-size-asian="8pt" style:font-size-complex="8pt"/>
		</style:style>
		<style:style style:name="P30" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P31" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" officeooo:rsid="00260ada" officeooo:paragraph-rsid="00260ada" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P32" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" officeooo:rsid="0026beb5" officeooo:paragraph-rsid="0026beb5" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P33" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" officeooo:rsid="0026beb5" officeooo:paragraph-rsid="00290639" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P34" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" officeooo:rsid="00290639" officeooo:paragraph-rsid="00290639" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P35" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P36" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial1" fo:font-size="6pt" officeooo:rsid="003c32ae" officeooo:paragraph-rsid="003c32ae" style:font-size-asian="6pt" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="P37" style:family="paragraph" style:parent-style-name="Table_20_Contents">
			<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
			<style:text-properties style:font-name="Arial" fo:font-size="6pt" officeooo:rsid="003c32ae" officeooo:paragraph-rsid="00383915" style:font-name-asian="Arial" style:font-size-asian="6pt" style:font-name-complex="Arial" style:font-size-complex="6pt"/>
		</style:style>
		<style:style style:name="T1" style:family="text">
			<style:text-properties officeooo:rsid="0026beb5"/>
		</style:style>
		<style:style style:name="T2" style:family="text">
			<style:text-properties officeooo:rsid="002e022a"/>
		</style:style>
		<style:style style:name="T3" style:family="text">
			<style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold"/>
		</style:style>
		<style:style style:name="T4" style:family="text">
			<style:text-properties fo:font-weight="bold" officeooo:rsid="00454f0d" style:font-weight-asian="bold" style:font-weight-complex="bold"/>
		</style:style>
		<style:style style:name="T5" style:family="text">
			<style:text-properties officeooo:rsid="00379323"/>
		</style:style>
		<style:style style:name="T6" style:family="text">
			<style:text-properties officeooo:rsid="00454119"/>
		</style:style>
		<style:style style:name="fr1" style:family="graphic" style:parent-style-name="Graphics">
			<style:graphic-properties style:vertical-pos="from-top" style:vertical-rel="paragraph" style:horizontal-pos="from-left" style:horizontal-rel="paragraph" style:mirror="none" fo:clip="rect(0cm, 0cm, 0cm, 0cm)" draw:luminance="0%" draw:contrast="0%" draw:red="0%" draw:green="0%" draw:blue="0%" draw:gamma="100%" draw:color-inversion="false" draw:image-opacity="100%" draw:color-mode="standard"/>
		</style:style>
		<style:style style:name="fr2" style:family="graphic" style:parent-style-name="Graphics">
			<style:graphic-properties style:vertical-pos="top" style:vertical-rel="baseline" style:horizontal-pos="center" style:horizontal-rel="paragraph" style:mirror="none" fo:clip="rect(0cm, 0cm, 0cm, 0cm)" draw:luminance="0%" draw:contrast="0%" draw:red="0%" draw:green="0%" draw:blue="0%" draw:gamma="100%" draw:color-inversion="false" draw:image-opacity="100%" draw:color-mode="standard"/>
		</style:style>
		<style:style style:name="fr3" style:family="graphic" style:parent-style-name="Graphics">
			<style:graphic-properties style:vertical-pos="from-top" style:horizontal-pos="center" style:horizontal-rel="paragraph" style:mirror="none" fo:clip="rect(0cm, 0cm, 0cm, 0cm)" draw:luminance="0%" draw:contrast="0%" draw:red="0%" draw:green="0%" draw:blue="0%" draw:gamma="100%" draw:color-inversion="false" draw:image-opacity="100%" draw:color-mode="standard"/>
		</style:style>
		<style:style style:name="Sect1" style:family="section">
			<style:section-properties text:dont-balance-text-columns="true" style:editable="false">
				<style:columns fo:column-count="3" fo:column-gap="0.198cm">
					<style:column-sep style:width="0.009cm" style:color="#808080" style:height="100%" style:style="solid" style:vertical-align="middle"/>
					<style:column style:rel-width="21845*" fo:start-indent="0cm" fo:end-indent="0.099cm"/>
					<style:column style:rel-width="21845*" fo:start-indent="0.099cm" fo:end-indent="0.099cm"/>
					<style:column style:rel-width="21845*" fo:start-indent="0.099cm" fo:end-indent="0cm"/>
				</style:columns>
			</style:section-properties>
		</style:style>
	</office:automatic-styles>
	<office:body>
	
		<xsl:apply-templates select="laufzettel"/>
		
  </office:body>
</office:document-content>
</xsl:template>

<xsl:template match="laufzettel">
	<office:text text:use-soft-page-breaks="true" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0">
		<text:sequence-decls>
			<text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
			<text:sequence-decl text:display-outline-level="0" text:name="Table"/>
			<text:sequence-decl text:display-outline-level="0" text:name="Text"/>
			<text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
		</text:sequence-decls>
		<text:p text:style-name="Seitenumbruch"/>
		<text:p text:style-name="P5">Bewerberdaten (<xsl:value-of select="studiengang_bezeichnung"/>)</text:p>
		<text:p text:style-name="P2"/>
		<table:table table:name="Tabelle1" table:style-name="Tabelle1">
			<table:table-column table:style-name="Tabelle1.A"/>
			<table:table-column table:style-name="Tabelle1.B"/>
			<table:table-column table:style-name="Tabelle1.C"/>
			<table:table-column table:style-name="Tabelle1.D"/>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="P17">Name:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B1" office:value-type="string">
					<text:p text:style-name="P17"><xsl:value-of select="name"/></text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B1" office:value-type="string">
					<text:p text:style-name="P7">SV-KtoNr:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.D1" office:value-type="string">
					<text:p text:style-name="P8"><xsl:value-of select="svnr"/></text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="P7">Adresse:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B2" office:value-type="string">
					<text:p text:style-name="P7"><xsl:value-of select="strasse"/>, <xsl:value-of select="plz"/> (<xsl:value-of select="nation"/>)</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B2" office:value-type="string">
					<text:p text:style-name="P7">Gebdat:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.D2" office:value-type="string">
					<text:p text:style-name="P8"><xsl:value-of select="gebdatum"/></text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A3" office:value-type="string">
					<text:p text:style-name="P7">ZugangBA:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B3" office:value-type="string">
					<text:p text:style-name="P7"><xsl:value-of select="zgv_bez"/></text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B3" office:value-type="string">
					<text:p text:style-name="P7">erbracht am:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.D3" office:value-type="string">
					<text:p text:style-name="P8"><xsl:value-of select="zgv_datum"/></text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A3" office:value-type="string">
					<text:p text:style-name="P7">ZugangMA:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B3" office:value-type="string">
					<text:p text:style-name="P7"><xsl:value-of select="zgvmas_bez"/></text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B3" office:value-type="string">
					<text:p text:style-name="P7">erbracht am:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.D3" office:value-type="string">
					<text:p text:style-name="P9"><xsl:value-of select="zgvmas_datum"/></text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="P7">Berufstätigkeit:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B2" office:value-type="string">
					<text:p text:style-name="P10"><xsl:value-of select="berufstaetigkeit"/></text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.B2" office:value-type="string">
					<text:p text:style-name="P6"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.D2" office:value-type="string">
					<text:p text:style-name="P9"/>
				</table:table-cell>
			</table:table-row>
		</table:table>
		<table:table table:name="Tabelle2" table:style-name="Tabelle2">
			<table:table-column table:style-name="Tabelle2.A"/>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle2.A1" office:value-type="string">
					<text:p text:style-name="P11">
						<text:span text:style-name="T4">Nicht akzeptierte Unterlagen (ev. beim Interview einfordern)</text:span>
						<text:s/>
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild10" text:anchor-type="as-char" svg:width="0.349cm" svg:height="0.349cm" draw:z-index="9">
							<draw:image xlink:href="Pictures/1000020100000010000000103EC68550.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>...<text:span text:style-name="T2">vorhanden <text:s text:c="2"/>
						</text:span>
						<text:span text:style-name="T2">
							<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild11" text:anchor-type="as-char" svg:width="0.349cm" svg:height="0.349cm" draw:z-index="25">
								<draw:image xlink:href="Pictures/100002010000001000000010576D7E99.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
							</draw:frame>
						</text:span>
						<text:span text:style-name="T2">...nicht vorhanden</text:span>
					</text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row table:style-name="Tabelle2.2">
				<table:table-cell table:style-name="Tabelle2.A2" office:value-type="string">
					<text:section text:style-name="Sect1" text:name="Bereich1">
						<xsl:apply-templates select="dokumente"/>
					</text:section>
					<text:p text:style-name="P11"/>
				</table:table-cell>
			</table:table-row>
		</table:table>
		<table:table table:name="Tabelle3" table:style-name="Tabelle3">
			<table:table-column table:style-name="Tabelle3.A"/>
			<table:table-column table:style-name="Tabelle3.B"/>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle3.A1" office:value-type="string">
					<text:p text:style-name="P13">Admission Office:</text:p>
					<text:p text:style-name="P13">Datum:</text:p>
					<text:p text:style-name="P13">Unterschrift:</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle3.B1" office:value-type="string">
					<text:p text:style-name="P13">Zulassung zum Aufnahmeverfahren empfohlen / nicht empfohlen</text:p>
					<text:p text:style-name="P13">Bedingung:</text:p>
				</table:table-cell>
			</table:table-row>
		</table:table>
		<table:table table:name="Tabelle4" table:style-name="Tabelle4">
			<table:table-column table:style-name="Tabelle4.A"/>
			<table:table-column table:style-name="Tabelle4.B"/>
			<table:table-column table:style-name="Tabelle4.C"/>
			<table:table-column table:style-name="Tabelle4.D"/>
			<table:table-column table:style-name="Tabelle4.A"/>
			<table:table-column table:style-name="Tabelle4.F"/>
			<table:table-column table:style-name="Tabelle4.C"/>
			<table:table-column table:style-name="Tabelle4.D"/>
			<table:table-column table:style-name="Tabelle4.I"/>
			<table:table-column table:style-name="Tabelle4.J"/>
			<table:table-header-rows>
				<table:table-row>
					<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="3" office:value-type="string">
						<text:p text:style-name="P20">ARIMA</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
						<text:p text:style-name="P31">Abschluss eines sozial, wirtschafts., natur- doer rechtswissenschaftlichen oder technischen Studiums</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
						<text:p text:style-name="P37">
							<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild12" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="10">
								<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
							</draw:frame>
						</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
						<text:p text:style-name="P30"/>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="6" office:value-type="string">
						<text:p text:style-name="P22">LOGM</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
						<text:p text:style-name="P34">Abschluss eines rechts-, sozial-, oder wirtschaftswissenschaftlichen Studiums, eines Geografie-Studiums oder ein Studienabschluss Industrielogistik</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
						<text:p text:style-name="P35">
							<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild27" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="27">
								<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
							</draw:frame>
						</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.H1" office:value-type="string">
						<text:p text:style-name="P30"/>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle4.I1" table:number-rows-spanned="9" table:number-columns-spanned="2" office:value-type="string">
						<table:table table:name="Tabelle7" table:style-name="Tabelle7">
							<table:table-column table:style-name="Tabelle7.A"/>
							<table:table-column table:style-name="Tabelle7.B"/>
							<table:table-row>
								<table:table-cell table:style-name="Tabelle7.A1" office:value-type="string">
									<text:p text:style-name="P29">Stg</text:p>
								</table:table-cell>
								<table:table-cell table:style-name="Tabelle7.B1" office:value-type="string">
									<text:p text:style-name="P29">Form/Sprache</text:p>
								</table:table-cell>
							</table:table-row>
							<xsl:apply-templates select="prestudenten"/>
						</table:table>
						<text:p text:style-name="P26"/>
					</table:table-cell>
					<table:covered-table-cell/>
				</table:table-row>
			</table:table-header-rows>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B2" office:value-type="string">
					<text:p text:style-name="P31">Wirtschaftswissenschaften 9 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C2" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild13" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="11">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F5" office:value-type="string">
					<text:p text:style-name="P34">Logistik, Transport, Verkehr 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G2" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild28" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="28">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H2" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B3" office:value-type="string">
					<text:p text:style-name="P31">Mathematik, Statistik 6 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C3" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr3" draw:name="Bild14" text:anchor-type="as-char" svg:y="0cm" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="12">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F5" office:value-type="string">
					<text:p text:style-name="P34">Betriebswirtschaftslehre 10 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G3" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild29" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="29">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H3" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="5" office:value-type="string">
					<text:p text:style-name="P19">BAFM</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
					<text:p text:style-name="P31">Abschluss wirtschaftswissenschaftliches Studium</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild15" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="13">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F5" office:value-type="string">
					<text:p text:style-name="P34">Rechtslehre 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G4" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild30" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="30">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H4" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B5" office:value-type="string">
					<text:p text:style-name="P31">Betriebswirtschaftslehre 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C5" office:value-type="string">
					<text:p text:style-name="P36">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild16" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="14">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F5" office:value-type="string">
					<text:p text:style-name="P34">IT 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G5" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild31" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="31">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H5" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B6" office:value-type="string">
					<text:p text:style-name="P31">Rechnungswesen/Controlling 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C6" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild17" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="15">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F6" office:value-type="string">
					<text:p text:style-name="P34">Englisch 4 ECTS</text:p>
					<text:p text:style-name="P34">(gilt nicht für Native Speakers)</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G6" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild32" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="32">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H6" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B7" office:value-type="string">
					<text:p text:style-name="P31">Volkswirtschaftslehre <text:span text:style-name="T1">4 ECTS</text:span>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C7" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild18" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="16">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="6" office:value-type="string">
					<text:p text:style-name="P22">PORG</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
					<text:p text:style-name="P34">Abschluss eines technischen, rechts-, sozial- oder wirtschaftswissenschaftlichen Studiums</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild33" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="33">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H7" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B8" office:value-type="string">
					<text:p text:style-name="P32">Mathematik/Statistik 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C8" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild19" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="17">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F11" office:value-type="string">
					<text:p text:style-name="P34">Projektmanagement 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G8" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild34" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="34">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H8" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="5" office:value-type="string">
					<text:p text:style-name="P21">EWUM</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
					<text:p text:style-name="P32">Abschluss eines rechts-, sozial- oder wirtschaftswissenschaftlichen Studiums</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild20" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="18">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F11" office:value-type="string">
					<text:p text:style-name="P34">Mathematik, Statistik 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G9" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild35" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="35">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H9" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B10" office:value-type="string">
					<text:p text:style-name="P32">Betriebswirtschaftslehre 8 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C10" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild21" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="19">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F11" office:value-type="string">
					<text:p text:style-name="P34">Betriebswirtschaftslehre 12 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G10" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild36" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="36">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H10" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.I10" office:value-type="string">
					<text:p text:style-name="P18"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.J10" office:value-type="string">
					<text:p text:style-name="P18"/>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B11" office:value-type="string">
					<text:p text:style-name="P32">Rechnungswesen 8 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C11" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild22" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="20">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F11" office:value-type="string">
					<text:p text:style-name="P34">Rechtslehre 4 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G11" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild37" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="37">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H11" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.I11" table:number-columns-spanned="2" office:value-type="string">
					<text:p text:style-name="P23">ECTS-Voraussetzungen</text:p>
				</table:table-cell>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B12" office:value-type="string">
					<text:p text:style-name="P32">Rechtslehre 6 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C12" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild23" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="21">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.F12" office:value-type="string">
					<text:p text:style-name="P33">Englisch 8 ECTS</text:p>
					<text:p text:style-name="P33">(gilt nicht für Native Speakers)</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G12" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild38" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="39">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H12" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.I12" office:value-type="string">
					<text:p text:style-name="P25">erfüllt</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.J12" office:value-type="string">
					<text:p text:style-name="P25">nicht erfüllt</text:p>
				</table:table-cell>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B13" office:value-type="string">
					<text:p text:style-name="P32">Englisch 8 ECTS</text:p>
					<text:p text:style-name="P32">(gilt nicht für Native Speakers)</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C13" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild24" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="22">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D1" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.E13" office:value-type="string">
					<text:p text:style-name="P18"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.F13" office:value-type="string">
					<text:p text:style-name="Standard"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.G13" office:value-type="string">
					<text:p text:style-name="P35"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H13" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.I14" table:number-rows-spanned="2" table:number-columns-spanned="2" office:value-type="string">
					<text:p text:style-name="P18"/>
				</table:table-cell>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle4.A1" table:number-rows-spanned="2" office:value-type="string">
					<text:p text:style-name="P21">AGHM</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.B1" office:value-type="string">
					<text:p text:style-name="P32">Abschluss eines sozial-, wirtschafts-, oder rechtswissenschaftlichen Studiums</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C14" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild25" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="23">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D14" table:number-columns-spanned="3" office:value-type="string">
					<text:p text:style-name="P33">BWL und Managementlehre 16 ECTS</text:p>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.C1" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild39" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="40">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H14" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
			</table:table-row>
			<table:table-row>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.B15" office:value-type="string">
					<text:p text:style-name="P32">Rechtslehre 8 ECTS</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.C15" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild26" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="24">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.D15" table:number-columns-spanned="3" office:value-type="string">
					<text:p text:style-name="P34">Englisch-Kenntnisse auf der Kompetenzstufe C1</text:p>
				</table:table-cell>
				<table:covered-table-cell/>
				<table:covered-table-cell/>
				<table:table-cell table:style-name="Tabelle4.G15" office:value-type="string">
					<text:p text:style-name="P35">
						<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild40" text:anchor-type="as-char" svg:width="0.212cm" svg:height="0.212cm" draw:z-index="38">
							<draw:image xlink:href="Pictures/1000020100000019000000190AE15192.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
						</draw:frame>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.H15" office:value-type="string">
					<text:p text:style-name="P30"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle4.I15" table:number-columns-spanned="2" office:value-type="string">
					<text:p text:style-name="P24">Unterschrift</text:p>
				</table:table-cell>
				<table:covered-table-cell/>
			</table:table-row>
		</table:table>
		<text:p text:style-name="P4">Die erforderlichen Zugangsvoraussetzungen sind erfüllt / nicht erfüllt</text:p>
		<text:p text:style-name="P4"/>
		<text:p text:style-name="P4">Bearbeitet von ________________________________ am ____________ Unterschrift: ________________</text:p>
		<text:p text:style-name="P4"/>
		<text:p text:style-name="P4">Weitere Vorgangsweise, wenn die Zugangsvoraussetzungen nicht erfüllt wurden:</text:p>
		<table:table table:name="Tabelle5" table:style-name="Tabelle5">
			<table:table-column table:style-name="Tabelle5.A"/>
			<table:table-row table:style-name="Tabelle5.1">
				<table:table-cell table:style-name="Tabelle5.A1" office:value-type="string">
					<text:p text:style-name="P14"/>
				</table:table-cell>
			</table:table-row>
		</table:table>
		<text:p text:style-name="P4">Die Vorgehensweise wurde durch die Studiengangsleitung genehmigt.</text:p>
		<text:p text:style-name="P4"/>
		<text:p text:style-name="P4">Die BewerberIn wird / wird NICHT zum Studium zugelassen.</text:p>
		<text:p text:style-name="P4"/>
		<text:p text:style-name="P4"/>
		<text:p text:style-name="P4"/>
		<table:table table:name="Tabelle6" table:style-name="Tabelle6">
			<table:table-column table:style-name="Tabelle6.A"/>
			<table:table-column table:style-name="Tabelle6.B"/>
			<table:table-column table:style-name="Tabelle6.B"/>
			<table:table-column table:style-name="Tabelle6.D"/>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle6.A1" office:value-type="string">
					<text:p text:style-name="P16"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle6.B1" office:value-type="string">
					<text:p text:style-name="P15">Datum</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle6.A1" office:value-type="string">
					<text:p text:style-name="P16"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle6.B1" office:value-type="string">
					<text:p text:style-name="P15"><xsl:value-of select="studiengang_studiengangsleitung"/></text:p>
				</table:table-cell>
			</table:table-row>
		</table:table>
	</office:text>
</xsl:template>
<xsl:template match="dokumente">
	<text:p text:style-name="P12"><xsl:value-of select="bezeichnung"/><text:tab/>
		<draw:frame xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" draw:style-name="fr2" draw:name="Bild2" text:anchor-type="as-char" svg:width="0.349cm" svg:height="0.349cm" draw:z-index="1">
		<xsl:choose>
			<xsl:when test="vorhanden='vorhanden'">
				<draw:image xlink:href="Pictures/1000020100000010000000103EC68550.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
			</xsl:when>
			<xsl:otherwise>
				<draw:image xlink:href="Pictures/100002010000001000000010576D7E99.png" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
			</xsl:otherwise>
		</xsl:choose>
		</draw:frame>
	</text:p>
</xsl:template>
<xsl:template match="prestudenten">
<table:table-row>
	<table:table-cell table:style-name="Tabelle7.A2" office:value-type="string">
			<text:p text:style-name="P28"><xsl:value-of select="studiengang"/></text:p>
		</table:table-cell>
		<table:table-cell table:style-name="Tabelle7.B2" office:value-type="string">
			<text:p text:style-name="P28"><xsl:value-of select="anmerkung_status"/></text:p>
		</table:table-cell>
	</table:table-row>
</xsl:template>
</xsl:stylesheet>