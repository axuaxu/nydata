$filen = @()
for ($i=0; $i -le 82; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}
 
 foreach ($fileName in $filen) {
  $t = 'New York State Attorneys Admitted in '+ $fileName.Substring(2,4) + '</h3>'
  (Get-Content $fileName) -replace('New York State Attorney Registry by Year</h3>', $t) | Set-Content $fileName
 }