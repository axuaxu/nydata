$FileName = ".\test.txt"
(Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "abcd") 
        {
            #Add Lines after the selected pattern 
            "Text To Add after abcd"
        }
    } | Set-Content $fileName