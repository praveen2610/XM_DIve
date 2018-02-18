<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  
<xsl:template match="/">
  <html>
    <table cellpadding="5" border="1">
      <tr>
	<th>Dive Number</th><th>Date of Dive</th><th>Time of Dive</th><th>Dive-Location</th><th>Dive-Site</th><th>Dive-Depth</th>
      </tr>
      <xsl:apply-templates select="//entry[location='Nelson Bay']">
	<xsl:sort select="depth" data-type="number" order="ascending"/>
      </xsl:apply-templates>
    </table>
  </html>
</xsl:template>

<xsl:template match="entry">
	<tr>
	  <td><xsl:value-of select="@number"/></td>
	  <td><xsl:value-of select="date"/></td>
	  <td><xsl:value-of select="time"/></td>
	  <td><xsl:value-of select="location"/></td>
	  <td><xsl:value-of select="site"/></td>
	  <td><xsl:value-of select="depth"/> <xsl:text> </xsl:text><xsl:text> </xsl:text><xsl:value-of select="depth/@unit"/></td>
	</tr>  
</xsl:template>

</xsl:stylesheet>
