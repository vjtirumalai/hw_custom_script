param([String]$operation="create")
$testFile="C:\test.txt"

If ($operation -eq "delete") {
  Write-Host $operation
  Get-Content -Path $testFile
  Remove-Item -Path $testFile
}

If ($operation -eq "create") {
  Write-Host $operation
  New-Item -Path $testFile -ItemType "file" -Value "Hello-World"
  Get-Content -Path $testFile
}
