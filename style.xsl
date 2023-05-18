<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="/">
        <html>
                <head>
                    <title>XML Tutorial </title>
                    <style type="text/css">
                        table{
				width:800px;
				border:solid 1px;
                             }
                             
		    </style>
                </head>
                <body>
			<table>
				<tr>
				      <th>ID</th>
				      <th>FirstName</th>
				      <th>LastName</th>
				      <th>email</th>
				</tr>
		  <xsl:for-each select="persondata/user">
                    <tr>
                        <td> <xsl:value-of select="@id" /></td>
                        <td> <xsl:value-of select="fname" /></td>
                        <td> <xsl:value-of select="lname" /></td>
                        <td> <xsl:value-of select="email" /></td>
                    </tr>
		</xsl:for-each>
			</table>
                   
                
                </body>
        </html>

   </xsl:template>

</xsl:stylesheet>