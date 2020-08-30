<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	   <HTML>
		 <BODY>
			<p>
			<b>날짜 : </b>  <xsl:value-of  select="//Date/pubDate"/> 
			</p>
			<xsl:apply-templates select="//Title/Headline"/>
			<xsl:apply-templates select="//Title/Subline" />
			<xsl:apply-templates select="//Body/Content/p[1]" />
		 </BODY>
			 
	   </HTML>
	</xsl:template>
	
	<xsl:template match="Headline">
			<b>제목 : </b>  <xsl:value-of  select="//Title/Headline"/> <br/><br/>
	</xsl:template>
	
	<xsl:template match="Subline">
			<b>부제목 : </b>  <xsl:value-of  select="//Title/Subline"/> <br/><br/>
	</xsl:template>
	
	<xsl:template match="//Body/Content/p[1]">
			<b>내용 미리보기 : </b>  <xsl:value-of  select="//Body/Content/p[1]"/> 
	</xsl:template>

</xsl:stylesheet>