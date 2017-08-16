$filen = @()
for ($i=0; $i -le 83; $i++)
{
    $j = 2017 - $i
    $filen += "ny" + $j+".html"
}

$full = "new york state attorney admitted in year"
Get-ChildItem *.html | ForEach { Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($_.BaseName)_$stamp$($_.Extension)" }