<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
		<style>
            body{
                padding: 20px;
            }
            table{
                background-color: white;
                width: 70%;
                margin: 0 auto;
            }
            th{
                background-color: #5e0536;
                color: white;
                padding: 5px 0 5px 0;
            }
            tr{
                text-align: center;
            }
            tr:nth-child(even){
                  background-color: lightgrey;
            }
            CAPTION{
            padding: 10px;
            text-align: center;
            font-size: 28px;
            font-family: Georgia, Serif;
            background-color: white;
            }
        </style>
	</head>
	<body>
		<table border="1" style="width:100vw;">
			<caption>Visitaion Records</caption>
			<tr>
			    <th>Patient</th>
				<th>Doctor</th>
				<th>Date</th>
				<th>Time</th>
			</tr>
			
			<xsl:for-each select="root/visit">
			<tr>
			    <td><xsl:value-of select="pname"/></td>
				<td><xsl:value-of select="sname"/></td>
				<td><xsl:value-of select="vdate"/></td>
				<td><xsl:value-of select="vstime"/></td>
            </tr>
			</xsl:for-each>
        </table>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>