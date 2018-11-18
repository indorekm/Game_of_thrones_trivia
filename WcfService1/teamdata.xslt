<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8" />
				<title>Teammate's Data</title>
				<link rel="stylesheet" href="desktop.css" type="text/css" />
				<link rel="stylesheet" href="print.css" type="text/css" media="print" />
				<link rel="stylesheet" href="mobile.css" type="text/css" media="screen and (max-device-width: 480px)" />
			</head>
			<body>
				<div class="topnav noprint">
					<a href="/index.html">Home</a>
					<a href="/teamdata.xml">Team Details</a>
				</div>
				<br/>
				<h1>Team Information</h1>
				<h2 style="text-align:center">Table contains the first name, last name, M# and favorite shortcut key for each teammate</h2>
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Bearcat ID</th>
						<th>Favorite shortcut</th>
					</tr>
					<xsl:for-each select="/userdetails/users">
						<tr>
							<td>
								<xsl:value-of select="firstname"/>
							</td>
							<td>
								<xsl:value-of select="lastname"/>
							</td>
							<td>
								<xsl:value-of select="bearcatid"/>
							</td>
							<td>
								<xsl:value-of select="favoriteshortcut"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
