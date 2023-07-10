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
        <xsl:for-each select="$indirs">
            <xsl:variable name="indir" select="."/>
            <xsl:for-each select="collection($indir)//TEI">
                <xsl:variable name="filename" select="substring-before(tokenize(base-uri(.),'/')[last()],'.xml')"/>
                <xsl:variable name="filename2" select="replace($filename,'%C3%A4','ä')"/>
                <xsl:variable name="filename3" select="replace($filename2,'%C3%96','Ö')"/>
                <xsl:variable name="filename4" select="replace($filename3,'%C3%BC','ü')"/>
                <xsl:variable name="filename5" select="replace($filename4,'%C3%9C','Ü')"/>
                <xsl:variable name="filename6" select="replace($filename5,'%C3%9F','ß')"/>
                <xsl:variable name="filename7" select="replace($filename6,'%C3%B6','ö')"/>
                <xsl:variable name="filename8" select="replace($filename7,'%C3%84','Ä')"/>
                <xsl:variable name="xml-id" select="@xml:id"/>
                <xsl:if test="$filename8 != $xml-id">
                    <xsl:value-of select="$filename8"/><xsl:text>,</xsl:text><xsl:value-of select="$xml-id"/>
                    <xsl:text>
</xsl:text>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>