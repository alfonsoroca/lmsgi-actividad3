<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
             <link rel="stylesheet" href="estilos.css"/>     <!-- Estilos CSS -->
                <title>Instituto Tecnologico Edix</title>
            </head>
            <body>
                <div id="contenedor">
                    <header>
                        <h1> Instituto Tecnologico Edix</h1>
                    </header>
                           
                    <hr/> 

                    <nav id="info">                                 
                        <xsl:value-of select="ite/empresa"/> :
                        <xsl:value-of select="ite/telefono"/>                              
                        <a id="pag_oficial" href="https://institutotecnologico.edix.com"><xsl:value-of select="ite/@web"/></a> 
                        <a id="enlace_form" href="formulario.html">Formulario Admision</a>                                               
                    </nav> 

                    <hr/>
                    
                    <section>
                        <article>
                            <table border="1" id="tabla1">      <!-- Tabla de los profesores-->
                                <tr>
                                    <th>Profesores</th>
                                    <th>Numero Id</th>                 
                                </tr>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <tr>
                                        <td><xsl:value-of select="nombre"/></td>
                                        <td><xsl:value-of select="id"/></td>
                                    </tr> 
                                </xsl:for-each>
                            </table>
                        </article> 
                         
                        <article>
                            <table border="1" id="tabla2">      <!-- Tabla del director y jefe de estudios-->
                                <tr>
                                    <th>Director</th>
                                    <th>Jefe de Estudios</th>                 
                                </tr>
                                <xsl:for-each select="ite">
                                    <tr>
                                        <td><xsl:value-of select="director/nombre"/></td>
                                        <td><xsl:value-of select="jefe_estudios/nombre"/></td>
                                    </tr> 
                                    <tr>
                                        <td><xsl:value-of select="director/despacho"/></td>
                                        <td><xsl:value-of select="jefe_estudios/despacho"/></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </article>
                        
                        <article>
                            <h2>Lista de Ciclos Formativos</h2>
                            
                                <xsl:for-each select="ite/ciclos/ciclo">
                                    <div id="lista">
                                        <ul>                    <!--Lista desordenada sobre los ciclos formativos -->
                                            <li><xsl:value-of select="@id"/>
                                                <ul>
                                                    <li><xsl:value-of select="nombre"/></li>
                                                    <li><xsl:value-of select="grado"/></li>
                                                    <li><xsl:value-of select="decretoTitulo/@año"/></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </xsl:for-each> 
                        </article> 
                    </section>   
                    <footer>
                        <p>Copyright 2021</p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>