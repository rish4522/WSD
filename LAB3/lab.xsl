<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <header style="background-color:powderblue;padding:4px;text-align:center;">
               <h1>THE PRINTS</h1>
               <h2>SHIPMENT DETAILS</h2>
            </header>
            <center>
               <table border="1">
                  <tr bgcolor="#FF7F00">
                     <th>Product</th>
                     <th>Quantity</th>
                     <th>City</th>
                     <th>PinCode</th>
                     <th>Last Delivered</th>
                     <th>Ratings</th>
                  </tr>
                  <xsl:for-each select="ships/prod">
                     <xsl:sort select="ratings" />
                     <tr>
                        <td>
                           <xsl:value-of select="p_name" />
                        </td>
                        <td>
                           <xsl:value-of select="qty" />
                        </td>
                        <td>
                           <xsl:value-of select="city" />
                        </td>
                        <td>
                           <xsl:value-of select="pin" />
                        </td>
                        <td>
                           <xsl:value-of select="last_del" />
                        </td>
                        <td>
                           <xsl:value-of select="ratings" />
                        </td>
                     </tr>
                  </xsl:for-each>
               </table>
            </center>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>