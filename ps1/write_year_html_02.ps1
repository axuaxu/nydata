
$yearStr = ''
for ($i=1999; $i -gt 1935; $i--)
{    

     $yearStr += '<div class="col-1-10">
       <div class="content">
           <h3><a href="ny' + $i+'.html">'+$i+'</a></h3>
       </div>
    </div>'
   }

   Write-Host $yearStr
    $fileName= "yy.html"
    $newline = "this is a new div
     and new divs are good"
    (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match '<!-- this is where to add new lines -->') 
        {
            #Add Lines after the selected pattern 
            $yearStr
        }
    } | Set-Content $fileName