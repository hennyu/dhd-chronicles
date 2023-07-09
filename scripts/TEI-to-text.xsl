<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <xsl:template match="/">
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2023/XML-files')//TEI">
            <xsl:result-document href="../2023_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2023/XML-files')//TEI">
            <xsl:result-document href="../2023_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2022/XML-Files')//TEI">
            <xsl:result-document href="../2022_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2022/XML-Files')//TEI">
            <xsl:result-document href="../2022_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2020/XML-files')//TEI">
            <xsl:result-document href="../2020_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2020/XML-files')//TEI">
            <xsl:result-document href="../2020_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2019/XML-files')//TEI">
            <xsl:result-document href="../2019_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2019/XML-files')//TEI">
            <xsl:result-document href="../2019_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2018/XML-files')//TEI">
            <xsl:result-document href="../2018_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2018/XML-files')//TEI">
            <xsl:result-document href="../2018_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2017/XML-files')//TEI">
            <xsl:result-document href="../2017_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2017/XML-files')//TEI">
            <xsl:result-document href="../2017_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2016/XML-files')//TEI">
            <xsl:result-document href="../2016_text/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//body//text()"/>
                <xsl:value-of select="//back//div[@type=('notes','Notes')]//text()"/>
            </xsl:result-document>
        </xsl:for-each>
        
        <xsl:for-each select="collection('/home/ulrike/Git/DHd-Abstracts-2016/XML-files')//TEI">
            <xsl:result-document href="../2016_bib/{replace(tokenize(base-uri(.),'/')[last()],'.xml','.txt')}" method="text">
                <xsl:value-of select="//back//div[@type='bibliogr']//text()"/>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>