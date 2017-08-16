
 $filen = @()
for ($i=0; $i -le 27; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}


 
 
 foreach ($fileName in $filen) {
  (Get-Content $fileName) -replace('<tr><th>First Name</th><th>Last Name</th><th>Company Name</th><th>City</th><th>State</th><th>Law School</th><th>Year Admitted</th></tr>', '<thead><tr><th>First Name</th><th>Last Name</th><th>Company Name</th><th>City</th><th>State</th><th>Law School</th><th>Year Admitted</th></tr></thead>') | Set-Content $fileName
 }