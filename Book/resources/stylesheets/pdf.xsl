<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<xsl:import href="/opt/homebrew/Cellar/docbook-xsl/1.79.2_1/docbook-xsl/fo/docbook.xsl"/>

<xsl:param name="paper.type">A5</xsl:param>
<xsl:param name="toc.max.depth">1</xsl:param>
<xsl:param name="body.start.indent">0pt</xsl:param>
<xsl:param name="chapter.autolabel" select="0"/>


<!-- Add other variable definitions here -->

</xsl:stylesheet>
