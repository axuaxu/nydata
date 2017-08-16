
 $filen = @()
for ($i=0; $i -le 17; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}
 
 
 foreach ($fileName in $filen) {
  (Get-Content $fileName) -replace('<title>HTML TABLE</title>', '<title>New York State Attorney Registry by Year</title>') | Set-Content $fileName
 }