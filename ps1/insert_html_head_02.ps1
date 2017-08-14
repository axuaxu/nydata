$filen = @()
for ($i=0; $i -le 64; $i++)
{
    $j = 1999 - $i
    $filen += "ny" + $j+".html"
}
 

foreach ($fileName in $filen) {
   (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "<body>") 
        {
            #Add Lines after the selected pattern 
            ' <h4 align="center" ><a href="http://gurukoala.com">gurukoala.com</a> 
          <a href="search.html">Search New York State Attorney Registry</a>   
  
           <a href="browse.html">Browse New York State Attorney Registry</a>
           <a href="new_york_state_adult_care_facility_directory.html">New York State Adult Care Facility Directory</a></h4>
           <h3 align="center">New York State Attorey Registry by Year</h3>'
        }
    } | Set-Content $fileName
 }
 