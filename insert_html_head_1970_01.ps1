
 $filen = @()
for ($i=0; $i -le 9; $i++)
{
    $j = 1979 - $i
    $filen += "ny" + $j+".html"
}

foreach ($fileName in $filen) {
   (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "<body>") 
        {
            #Add Lines after the selected pattern 
            '  <h4 align="center" ><a href="http://gurukoala.com">gurukoala.com</a> 
          <a href="search.html">Search New York State Attorney Registry</a>   
  
           <a href="browse.html">Browse New York State Attorney Registry</a>
   
          <a href="new_york_state_attorney_registry_by_year.html">New York State Attorney Registry by Year</a>   
  
            
           <a href="new_york_state_adult_care_facility_directory.html">New York State Adult Care Facility Directory</a></h4>
           <h3 align="center">New York State Attorney Registry by Year</h3>
 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- top001 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-8980136446658337"
     data-ad-slot="5261164618"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
'
        }
    } | Set-Content $fileName
 }
 