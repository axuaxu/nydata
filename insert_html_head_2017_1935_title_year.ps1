$filen = @()
for ($i=0; $i -le 82; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}
 
 foreach ($fileName in $filen) {
  $t = '<title>New York State Attorneys Admitted in '+ $fileName.Substring(2,4) + ' </title>'
  (Get-Content $fileName) -replace('<title>New York State Attorney Registry by Year</title>', $t) | Set-Content $fileName
 }