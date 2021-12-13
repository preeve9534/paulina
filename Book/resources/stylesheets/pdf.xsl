<?xml version='1.0'?>
<xsl:stylesheet 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:fo="http://www.w3.org/1999/XSL/Format"
     xmlns:d="http://docbook.org/ns/docbook"
     exclude-result-prefixes="d"
     version="1.0">

  <xsl:import href="/opt/homebrew/Cellar/docbook-xsl/1.79.2_1/docbook-xsl-ns/fo/docbook.xsl"/>
  <xsl:import href="mytitlepages.xsl"/>

  <xsl:param name="paper.type">A5</xsl:param>
  <xsl:param name="toc.max.depth">1</xsl:param>
  <xsl:param name="body.start.indent">0pt</xsl:param>
  <xsl:param name="chapter.autolabel" select="0"/>
  <xsl:param name="toc.autolabel" select="0"/>
  <!-- Add other variable definitions here -->

</xsl:stylesheet>

