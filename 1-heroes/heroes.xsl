<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <style>
               .container{
                    display:grid;
                    grid-template-columns: repeat( auto-fit, minmax(300px, 1fr) );
                    gap:12px;   
               } 
               article{
                display:flex;
                flex-direction:column;
                padding:12px;
                border-radius:8px;
                box-shadow:0 0 8px rgba(0,0,0,.3)
               }
               img{
                width:100%;
                aspect-ratio:16/9;
                background: cover;
               }
            </style>

        </head>
        <body>
        <div class="container">   
            <xsl:for-each select="/heroes/hero">
                <article>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="imgSource"/>
                        </xsl:attribute>
                    </img> 
                    <h3> <xsl:value-of select="./name"/></h3>
                    <p><b>Secret identity:</b>  <xsl:value-of select="./secretIdentity"/></p>
                    <p><b>Powers:</b>  
                        <ul>
                            <xsl:for-each select="./powers/power">
                                <li> <xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </p>
                </article>
            </xsl:for-each>
        </div>
        </body>
    </html>
</xsl:template>



</xsl:stylesheet>