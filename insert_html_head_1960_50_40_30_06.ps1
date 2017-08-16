
 $filen = @()
for ($i=0; $i -le 34; $i++)
{
    $j = 1969 - $i
    $filen += "ny" + $j+".html"
}

 
 
 foreach ($fileName in $filen) {
  (Get-Content $fileName) -replace('</table>', '</table> <script type="text/javascript">
 
    $(document).ready(function() {
    $("#lawyerTable").DataTable( {
        
    } );
} );
 
</script>
 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- bottom001 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-8980136446658337"
     data-ad-slot="1778798728"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
') | Set-Content $fileName
 }