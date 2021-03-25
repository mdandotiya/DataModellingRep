<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <form>
            <xsl:for-each select="root/element">
                    <xsl:if test="type='TEXT'">
                          <label>
                            <xsl:value-of select="name"/> :
                        </label>
                        <br></br>
                        <input type="text" id ="{id}" size="20" />
                        <br></br>
                    </xsl:if>
                    <xsl:if test="type='DATE'">
                        <label>
                            <xsl:value-of select="name"/> :
                        </label>
                        <br></br>
                        <input type="date" id ="{id}" size="20" />
                        <br></br>
                    </xsl:if>
            </xsl:for-each>
        </form>
    </xsl:template>
</xsl:stylesheet>
