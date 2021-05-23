<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		
		<html>
            <head>		
                <title>ITE EDIX</title>
            </head>
            
            <body>
            
            <h1 style="color:red"><xsl:value-of select="ite/@nombre"/></h1>
            
            <xsl:for-each select="ite/profesores/profesor">
                <p>			
                   
                    Nombre: <xsl:value-of select="nombre"/>
                    <br />
                    ID: <xsl:value-of select="id"/>
                    <br/>
                    
                </p>
            </xsl:for-each>

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
            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>