<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	   <HTML>
		 <Header>
			<table border="1">
			<tr>
			<th>최초등록날짜</th><th>최근수정날짜</th><th colspan="2">기자</th>
			<th rowspan="2"><xsl:apply-templates select="//Writer/pic"/></th>
			</tr>
			<tr valign="top">
			<td> <xsl:value-of  select="//Date/pubDate"/> </td>
			<td> <xsl:value-of  select="//Date/lastBuildDate"/> </td>
			<td> <xsl:apply-templates select="//Writer/name"/> </td>
			<td> <xsl:value-of  select="//Writer/email/@edress"/> </td>
			</tr>
			<xsl:apply-templates select="//Headline"/>
			<xsl:apply-templates select="//Subline"/>
			</table>
		 </Header>

		 <BODY>
			<xsl:apply-templates select="//Body/pic"/>
			<BR/>
			<xsl:for-each select="//Content/p">
				<BR/>
				<xsl:value-of  select="."/>
				<BR/>
			</xsl:for-each>
		 </BODY>
			 
	   </HTML>
	</xsl:template>
	
	<xsl:template match="Writer/name">
	<A TARGET="_blank">
	<xsl:attribute name="HREF">https://www.huffingtonpost.kr/author/byeogjin-kang/
	</xsl:attribute>
	<xsl:value-of select="."/>
	</A>
	</xsl:template>

	<xsl:template match="Writer/pic">
	<img width="100" height="100"><xsl:attribute name="src">
	<xsl:value-of select="//Writer/pic/@file"/></xsl:attribute>
	</img>
	</xsl:template>

	<xsl:template match="Body/pic">
	<img width="100" height="100"><xsl:attribute name="src">
	<xsl:value-of select="//Body/pic/@file"/></xsl:attribute>
	</img>
	</xsl:template>
	
	<xsl:template match="Headline">
			<tr valign="top" bgcolor="yellow">
			<td colspan="5"><H2><xsl:value-of  select="//Headline"/></H2> </td>
			</tr>
	</xsl:template>
	
	<xsl:template match="Subline">
			<tr valign="top" bgcolor="yellow">
			<td colspan="5"><H3> <xsl:value-of  select="//Subline"/></H3> </td>
			</tr>
	</xsl:template>
	
	
</xsl:stylesheet>