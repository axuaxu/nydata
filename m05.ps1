$filen = @()
for ($i=0; $i -le 82; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
    $t = $filen.Substring(2,4)
    Write-Host $t
}

Write-Host $filen