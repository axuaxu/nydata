$filen = @()
for ($i=0; $i -le 17; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}

Write-Host $filen