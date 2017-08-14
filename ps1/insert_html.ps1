$FileName = ".\test.txt"
(Get-Content $fileName) | 
    Foreach-Object {
        $_ # send the current line to output
        if ($_ -match "<body>") 
        {
            #Add Lines after the selected pattern 
            "Text To Add after <body>"
        }
    } | Set-Content $fileName