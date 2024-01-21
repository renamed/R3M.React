. .\helpers.ps1

function Update-Package-Json() {
    $jsonContent = Get-Content -Path "package.json" | ConvertFrom-Json
    $jsonContent.scripts.dev = "vite --open"
    $jsonString = $jsonContent | ConvertTo-Json -Depth 5    
    $jsonString | Set-Content -Path "package.json" -Force
}

$directories =  Get-ChildItem -Directory | Where-Object { $_.Name -match '^\d{3}' } | Sort-Object Name

$newNumber = 1
if ($directories.Count -ne 0) {    
    $lastDir = $directories[-1]    
    $lastDir.Name -match '^\d+' | Out-Null
    $lastNumber = [int]$Matches[0]
    $newNumber = [int]$lastNumber + 1
}

$description = Read-Host "Enter the project description"
$normalizedDescription = Format-String $description

$projectName = "{0:D3}-{1}" -f $newNumber, $normalizedDescription

npm create vite@latest $projectName -- --template react 
Set-Location $projectName
Update-Package-Json
npm install
npm run dev