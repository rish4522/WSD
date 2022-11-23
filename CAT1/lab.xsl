<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
    <body>
        <header style="background-color:powderblue;padding:4px;text-align:center;">
            <h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
            <h2>CAT Co. and Ltd.</h2>
        </header>
        <table border="1">
            <tr bgcolor="green">
                <th>NAME</th>
                <th>AGE</th>
                <th>SALARY</th>
                <th>EMAIL</th>
                <th>MobNum</th>
                <th>Designation</th>
                <th>Promotion</th>
            </tr>
            <xsl:for-each select="company/employee">
            <xsl:if test="emp_age &lt; 50">
                <tr>
                    <td><xsl:value-of select="emp_promotion"/></td>
                </tr>
            </xsl:if>

        <tr>
            <td><xsl:value-of select="emp_name"/></td>
            <td><xsl:value-of select="emp_age"/></td>
            <td><xsl:value-of select="emp_salary"/></td>
            <td><xsl:value-of select="emp_emailid"/></td>
            <td><xsl:value-of select="emp_phonenum"/></td>
            <td><xsl:value-of select="emp_designation"/></td>
        </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>