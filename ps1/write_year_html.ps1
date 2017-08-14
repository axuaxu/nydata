
$yearArray = @()
for ($i=0; $i -le 83; $i++)
{    $j = $i+1935
     $yearArray += "new york_" + $j
   }

   Write-Host $yearArray
    $fileName= "yy.html"
    $newline = "this is a new div
     and new divs are good"
    (Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match '<!-- this is where to add new lines -->') 
        {
            #Add Lines after the selected pattern 
            $newline
        }
    } | Set-Content $fileName