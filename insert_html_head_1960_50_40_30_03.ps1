
 $filen = @()
for ($i=0; $i -le 34; $i++)
{
    $j = 1969 - $i
    $filen += "ny" + $j+".html"
}

 
 
 foreach ($fileName in $filen) {
  (Get-Content $fileName) -replace('<title>HTML TABLE</title>', '<link rel="stylesheet" href="css/material.min.css">
    <link rel="stylesheet" href="css/dataTables.material.min.css">
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
     <title>New York State Attorney Registry by Year</title>') | Set-Content $fileName
 }