
$filen = @("ny2017.csv","ny2016.csv","ny2015.csv","ny2014.csv","ny2013.csv","ny2012.csv","ny2011.csv","ny2010.csv","ny2009.csv","ny2008.csv","ny2007.csv","ny2006.csv","ny2005.csv","ny2004.csv","ny2003.csv","ny2002.csv","ny2001.csv","ny2000.csv")
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
 