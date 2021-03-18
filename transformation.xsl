<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Details</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Course</th>
                        <th>ID</th>
                        <th>Instructor</th>
                        <th>Class</th>
                    </tr>
                    <xsl:for-each select="Courses/Course">
                        <tr>
                            <td><xsl:value-of select="CourseName"/></td>
                            <td><xsl:value-of select="CourseId"/></td>
                            <td><xsl:value-of select="CourseInstructor"/></td>
                            <td><xsl:value-of select="Classroom"/></td>
                        </tr>
                    </xsl:for-each>
                    <tr bgcolor="#9acd32">
                        <th>Professor's education</th>
                        <th>Professor's email</th>
                    </tr>
                    <xsl:for-each select="Courses/Professor">
                        <tr>
                            <td><xsl:value-of select="Education"/></td>
                            <td><xsl:value-of select="Email"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet> 
