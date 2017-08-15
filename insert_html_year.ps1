
$filen = @("ny2017.html","ny2016.html","ny2015.html","ny2014.html","ny2013.html","ny2012.html","ny2011.html","ny2010.html","ny2009.html","ny2008.html","ny2007.html","ny2006.html","ny2005.html","ny2004.html","ny2003.html","ny2002.html","ny2001.html","ny2000.html")
foreach ($fileName in $filen) {
   (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "<body>") 
        {
            #Add Lines after the selected pattern 
            ' <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- top001 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-8980136446658337"
     data-ad-slot="5261164618"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>'
        }
    } | Set-Content $fileName
 }
 