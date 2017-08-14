
$yearArray = @()
for ($i=0; $i -le 83; $i++)
{    $j = $i+1935
     $yearArray += "new york_" + $j
   }

   Write-Host $yearArray