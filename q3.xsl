<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
<xsl:template match="/">
  <html>
  <xsl:apply-templates select="//entry[@number='dive38']"/>
  </html>
</xsl:template>

<xsl:template match="entry">
  <xsl:variable name="divenumber" select="@number"/>
  <h2>Dive number <xsl:value-of select='substring($divenumber,5)'/></h2>
  
	<p><strong>Date:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="date"/> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;
	   <strong>Time:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="time"/><br/>
	   <strong>Place:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="location"/>,
	   <xsl:value-of select="state"/>,
	   <xsl:value-of select="country"/>,
	   <xsl:value-of select="site"/><br/>
	   <strong>Coordinates:</strong> <xsl:apply-templates select="gps"/><br/>
	   <strong>Operator:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="operator"/><br/>
	   <strong>Duration:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="duration"/><xsl:text> </xsl:text> <xsl:text> </xsl:text>;
           <xsl:value-of select="duration/@unit"/><br/>
	   <strong>Depth:</strong> <xsl:text> </xsl:text> <xsl:text> </xsl:text>;<xsl:value-of select="depth"/><xsl:text> </xsl:text> <xsl:text> </xsl:text>;
	<xsl:value-of select="depth/@unit"/></p>
	<h3>Sightings</h3>
	<ul>
	  <xsl:apply-templates select="sighting"/>
	</ul>
	<h3>Notes</h3>
	<p><xsl:value-of select="notes"/></p>
</xsl:template>

<xsl:template match="gps">
(<xsl:value-of select="latitude"/>,<xsl:value-of select="longitude"/>)
</xsl:template>

<xsl:template match="sighting">
         <li><xsl:value-of select="."/></li>
</xsl:template>

</xsl:stylesheet>

