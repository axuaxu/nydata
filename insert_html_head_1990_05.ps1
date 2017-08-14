
 $filen = @()
for ($i=0; $i -le 9; $i++)
{
    $j = 1999 - $i
    $filen += "ny" + $j+".html"
}

 
 
 foreach ($fileName in $filen) {
  (Get-Content $fileName) -replace('<table>', '<table id="lawyerTable" class="table table-bordered table-hover table-condensed">') | Set-Content $fileName
 }