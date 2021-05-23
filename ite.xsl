<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		
		<html>
            <head>		
                <title>ITE EDIX</title>
            </head>
            
            <body>
            
            <h1 style="color:blue"><xsl:value-of select="ite/@nombre"/></h1>
            
            <div>
                <h2>Director:</h2>
                <p>
                    Nombre: <xsl:value-of select="ite/director/nombre"/>
                    Despacho: <xsl:value-of select="ite/director/despacho"/>
                </p>
                <h2>Jefe de Estudios:</h2>
                <p>
                    Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/>
                    Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/>
                </p>
            </div>

            <div>
                <h2>Profesores:</h2>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>ID</th>
                    </tr>
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="id"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <br/>
            </div>

            <div>
                <table border="1">
                    <tr>
                        <th>Ciclo</th>
                        <th>Nombre</th>
                        <th>Tipo</th>
                        <th>Año Decreto</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>