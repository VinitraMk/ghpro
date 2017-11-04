<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width" />
        <title>Patient Records</title>
        <link rel="shortcut icon" href="GHLogo.ico" type="image/x-icon" />
        <link href="/assets/css/index.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
        <script src="/assets/js/index.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            form{
                color:#000000 !important;
            }
            body{
                padding: 20px;
            }
            table{
                background-color: white;
                width: 70%;
                margin: 0 auto;
            }
            th{
                background-color: #0D7DBD;
                color: white;
                padding: 5px 0 5px 0;
            }
            td
            {
                color: #0D7DBD;
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
            color: #0D7DBD;
            }
        </style>
    </head>
	<body>


        <form name="psearch" action="/assets/php/pat_search.php" method="POST">
            <fieldset>
                <legend>Patient Search:</legend>
                <input type="text" id="name" name="name" placeholder="Name.." style="width:25%; align:'left';"/><br/>
				<input type="date" id="dob" name="dob" placeholder="DOB.." style="width:25%; align:'center';"/><br/>
				<button type="submit" name="spat" id="spat" style="width:25%; align:'right';">Apply</button>
            </fieldset>
		</form>
		<table border="1" style="width:100vw;align:left;">
			<caption>Patients</caption>
			<tr>
			    <th>PID</th>
				<th>Name</th>
				<th>DOB</th>
				<th>Sex</th>
				<th>Address</th>
				<th>Blood Type</th>
				<th>Phone Number</th>

			</tr>

			<xsl:for-each select="root/pat">
			<tr>
				<td><xsl:value-of select="pid"/></td>
				<td><xsl:value-of select="pname"/></td>
				<td><xsl:value-of select="pdob"/></td>
				<td><xsl:value-of select="psex"/></td>
				<td><xsl:value-of select="paddr"/></td>
				<td><xsl:value-of select="bloodtype"/></td>
				<td><xsl:value-of select="pphone"/></td>

            </tr>
			</xsl:for-each>
        </table>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>
