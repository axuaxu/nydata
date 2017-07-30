
<!-- Defiant template -->
<script type="defiant/xsl-template">
    <xsl:template name="books_template">
        <h1>Books</h1>
        <xsl:for-each select="//book">
            <xsl:sort order="ascending" data-type="number" select="price"/>
            <h2><xsl:value-of select="title"/></h2>
            Author: <strong><xsl:value-of select="author"/></strong><br/>
            Price: <xsl:value-of select="price"/>
        </xsl:for-each>
    </xsl:template>
</script>
 
<!-- Output element -->
<div id="output"></div>
 
<script type="text/javascript">
 
var data = {
        "store": {
            "book": [
                {
                    "title": "The Lord of the Rings",
                    "author": "J. R. R. Tolkien",
                    "category": "Fiction",
                    "price": 22.99,
                },
                {
                    "title": "Moby Dick",
                    "author": "Herman Melville",
                    "category": "Fiction",
                    "price": 8.99
                }
            ]
        }
    },
    htm = Defiant.render('books_template', data);

document.getElementById('output').innerHTML = htm;

</script> 
 