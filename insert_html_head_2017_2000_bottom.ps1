$filen = @()
for ($i=0; $i -le 17; $i++)
{
    $j = 2017 - $i
    $filen += "new york attorney admitted in year " + $j+".html"
    $t = $filen.Substring(2,4)
     
}

 
 foreach ($fileName in $filen) {
  
  (Get-Content $fileName) -replace('</table> <script type="text/javascript">
 
    $(document).ready(function() {
    $("#lawyerTable").DataTable( {
        
    } );
} );', '</table>') | Set-Content $fileName
 }