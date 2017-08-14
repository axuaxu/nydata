

$filen = @()
for ($i=0; $i -le 9; $i++)
{
    $j = 1999 - $i
    $filen += "ny" + $j+".html"
}
 
 Write-Host $filen