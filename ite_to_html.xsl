<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
    <xsl:template match="/">
		
		<html>
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <!-- Título de la página -->
                <title>ITE EDIX</title>
                <!-- Enlace al fichero de css -->
                <link rel="stylesheet" href="css/estilos.css"/>
            </head>

            <header>
                <h1><xsl:value-of select="ite/@nombre"/></h1>
            </header>
            
            <body>
            
                <nav id="nav-normal">
                    <ul>
                        <li><a href="main.html">Inicio</a></li>
                        <li>
                            <!-- Para poner el link en el href podemos usar una variable -->
                            <a id="paginaweb" href="{ite/@web}">Quienes Somos</a>
                        </li>
                        <li><a href="contacto.html">Contacto</a></li>
                    </ul>
                </nav>

                <div id="div_fs">
                    <section id="section_left">
                        <h2>Director:</h2>
                        <p>
                            Nombre: <xsl:value-of select="ite/director/nombre"/>
                            <br/>
                            Despacho: <xsl:value-of select="ite/director/despacho"/>
                        </p>
                        <h2>Jefe de Estudios:</h2>
                        <p>
                            Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/>
                            <br/>
                            Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </p>
                    </section>
                    <section id="section_right">
                        <h2>Profesores:</h2>
                        <table class="center">
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
                    </section>
                </div>

                <div id="div_fs">
                    <h2>Cursos:</h2>
                    <table class="center">
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

                <footer>        
                    Copyright 2021 &#169; <!-- &copy no se puede usar en el xml, hay que sustituirlo por el codigo unicode del simbolo-->        
                </footer>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>