
$filen = @("ny2017.html","ny2016.html","ny2015.html","ny2014.html","ny2013.html","ny2012.html","ny2011.html","ny2010.html","ny2009.html","ny2008.html","ny2007.html","ny2006.html","ny2005.html","ny2004.html","ny2003.html","ny2002.html","ny2001.html","ny2000.html")
foreach ($fileName in $filen) {
   (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "Browse New York State Attorney Registry</a>") 
        {
            #Add Lines after the selected pattern 
            '   
          <a href="new_york_state_attorney_registry_by_year.html">New York State Attorney Registry by Year/a>   
  
            '
        }
    } | Set-Content $fileName
 }
 