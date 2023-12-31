<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <xsl:variable name="indirs" select="('/home/ulrike/Git/DHd-Abstracts-2016/XML-files',
        '/home/ulrike/Git/DHd-Abstracts-2017/XML-files',
        '/home/ulrike/Git/DHd-Abstracts-2018/XML-files',
        '/home/ulrike/Git/DHd-Abstracts-2019/XML-files',
        '/home/ulrike/Git/DHd-Abstracts-2020/XML-files',
        '/home/ulrike/Git/DHd-Abstracts-2022/XML-Files',
        '/home/ulrike/Git/DHd-Abstracts-2023/XML-files')"/>
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <xsl:text>idno,filename,type,year</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:for-each select="$indirs">
            <xsl:variable name="indir" select="."/>
            <xsl:for-each select="collection($indir)//TEI">
                <xsl:text>dh,</xsl:text>
                <xsl:value-of select="@xml:id"/><xsl:text>.xml,</xsl:text>
                <xsl:value-of select="//keywords[@n='subcategory']/normalize-space(.)"/><xsl:text>,</xsl:text>
                <xsl:value-of select="replace($indir,'\D','')"/>
                <xsl:text>
</xsl:text>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>