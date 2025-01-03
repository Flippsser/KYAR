<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Процессоры</title>
        <link rel="stylesheet" type="text/css" href="first.css"/>
      </head>
      <body>
      
        <table border="1">
          <thead>
            <tr>
              <th>Модель процессора: </th>
              <th>Техпроцесс(нм): </th>
              <th>Тепловыделение(Вт): </th>
              <th>Цена(₽): </th>
              
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="catalog/product">
              <xsl:sort select="name" order="ascending"/>
              <tr>
                <td class="name">
                  <xsl:value-of select="name"/>
                </td>
                <td class="characteristica">
                  <xsl:value-of select="characteristica"/>
                </td>
                <td class="temperatura">
                  <xsl:for-each select="temperatura/text()">
                    <xsl:value-of select="normalize-space(.)"/>
                  </xsl:for-each>
                </td>
                <td class="cost">
                  <xsl:for-each select="cost/text()">
                    <xsl:value-of select="normalize-space(.)"/>
                  </xsl:for-each>
                </td>


              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
