<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8" />
				<title>Teammate's Data</title>
			</head>
			<body>
				<h1>Team Information</h1>
				<p>Table contains the first name, last name, M# and favorite shortcut key for each teammate</p>
				<table style="width:80%;" border="1">
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
