. .\helpers.ps1

$directories =  Get-ChildItem -Directory | Where-Object { $_.Name -match '^\d{3}' } | Sort-Object Name

$newNumber = 1
if ($directories.Count -ne 0) {    
    $lastDir = $directories[-1]    
    $lastDir.Name -match '^\d+' | Out-Null
    $lastNumber = [int]$Matches[0]
    $newNumber = [int]$lastNumber + 1
}

Write-Host $newNumber

$description = Read-Host "Enter the project description"
$normalizedDescription = Format-String $description

$projectName = "{0:D3}-{1}" -f $newNumber, $normalizedDescription

npm create vite@latest $projectName -- --template react
Set-Location $projectName
npm install
npm run dev