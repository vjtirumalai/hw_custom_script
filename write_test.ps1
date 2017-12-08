New-Item -Path . -Name "test.txt" -ItemType "file" -Value "Hello-World"
Get-Content -Path . "test.txt"
