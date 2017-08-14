
$filen = @("ny2017.html","ny2016.html","ny2015.html","ny2014.html","ny2013.html","ny2012.html","ny2011.html","ny2010.html","ny2009.html","ny2008.html","ny2007.html","ny2006.html","ny2005.html","ny2004.html","ny2003.html","ny2002.html","ny2001.html","ny2000.html")
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
 