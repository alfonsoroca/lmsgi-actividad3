﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<edix>

			<info>
				<nombre><xsl:value-of select="ite/@nombre"/></nombre>
				<web><xsl:value-of select="ite/@web"/></web>
				<empresa><xsl:value-of select="ite/empresa"/></empresa>
				<telefono><xsl:value-of select="ite/telefono"/></telefono>
			</info>

			<direccion>

				<director>
					<nombre><xsl:value-of select="ite/director/nombre"/></nombre>
					<despacho><xsl:value-of select="ite/director/despacho"/></despacho>
				</director>

				<jefedeestudios>
					<nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
					<despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
				</jefedeestudios>

			</direccion>

			<profesores>
				<xsl:for-each select="ite/profesores/profesor">
					<profesor>
						<xsl:attribute name="id">
							<xsl:value-of select="id"/>
						</xsl:attribute>
						<nombre><xsl:value-of select="nombre"/></nombre>
					</profesor>
				</xsl:for-each>
			</profesores>

			<cursos>
				<xsl:for-each select="ite/ciclos/ciclo">
					<curso añoDecreto="{decretoTitulo/@anno}">
						<id><xsl:value-of select="@id"/></id>
						<nombre><xsl:value-of select="nombre"/></nombre>
						<tipo><xsl:value-of select="grado"/></tipo>
					</curso>
				</xsl:for-each>
			</cursos>

		</edix>

    </xsl:template>
</xsl:stylesheet>
