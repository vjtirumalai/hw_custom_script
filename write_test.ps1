param([String]$operation="create")

If ($operation -eq "delete") {
  Write-Host $operation
  Get-Content -Path . "test.txt"
  Remove-Item -Path . -Name "test.txt"
}

If ($operation -eq "create") {
  Write-Host $operation
  New-Item -Path . -Name "test.txt" -ItemType "file" -Value "Hello-World"
  Get-Content -Path . "test.txt"
}
