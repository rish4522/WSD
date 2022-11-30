<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  	<body>
  		<h2>Student Details</h2>
  			<table border="1">
    			<tr bgcolor="#9acd32">
      				<th>Name</th>
      				<th>Reg No</th>
	  				<th>Class</th>
    			</tr>
    			<xsl:for-each select="course/student">
				<tr>
      				<td><xsl:value-of select="name"/></td>
      				<td><xsl:value-of select="regno"/></td>
	  				<td><xsl:value-of select="class"/></td>
    			</tr>
				</xsl:for-each>
  			</table>
  	</body>
  </html>
</xsl:template>
</xsl:stylesheet>