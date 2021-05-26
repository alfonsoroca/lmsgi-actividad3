<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
        <xsl:template match="/">
            <instituto>
                <nombre_instituto><xsl:value-of select="ite/@nombre"/></nombre_instituto>
                <web><xsl:value-of select="ite/@web"/></web>
                <empresa><xsl:value-of select="ite/empresa"/></empresa>
                <telefono><xsl:value-of select="ite/telefono"/></telefono>
                <profesores>    
                    <xsl:for-each  select="ite/profesores/profesor">
                        <profesor>          <!-- Las etiquetas Id y Nombre las cambiamos a Atributos-->
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </profesor>
                    </xsl:for-each>                   
                </profesores>

                <director>         <!-- Las etiquetas Nombre y Despacho las cambiamos a Atributos-->
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/director/nombre"/>
                    </xsl:attribute>

                    <xsl:attribute name="despacho">
                        <xsl:value-of select="ite/director/despacho"/>
                    </xsl:attribute>           
                </director>

                <jefe_estudios>     <!-- Las etiquetas Nombre y Despacho las cambiamos a Atributos-->
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/jefe_estudios/nombre"/>
                    </xsl:attribute>

                    <xsl:attribute name="despacho">
                        <xsl:value-of select="ite/jefe_estudios/despacho"/>
                    </xsl:attribute>                 
                </jefe_estudios>

                <ciclos>          <!-- Las etiquetas Nombre, Grado y decretoTitulo las cambiamos a Atributos-->
                    <xsl:for-each  select="ite/ciclos/ciclo">
                        <ciclo>
                                <xsl:attribute name="id">
                                    <xsl:value-of select="@id"/>
                                </xsl:attribute>
                                <xsl:attribute name="nombre">
                                    <xsl:value-of select="nombre"/>
                                </xsl:attribute>
                                <xsl:attribute name="grado">
                                    <xsl:value-of select="grado"/>
                                </xsl:attribute>
                                <xsl:attribute name="decretotitulo">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </xsl:attribute>                          
                        </ciclo>
                    </xsl:for-each>
                </ciclos>
            </instituto>
        </xsl:template>
</xsl:stylesheet>