get-content c:\new\temp_*.txt | select-string -pattern 'H`|159' -notmatch | Out-File c:\new\newfile.txt