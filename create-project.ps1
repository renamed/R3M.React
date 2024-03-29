. .\helpers.ps1

function Update-Package-Json() {
    $jsonContent = Get-Content -Path "package.json" | ConvertFrom-Json
    $jsonContent.scripts.dev = "vite --open"
    $jsonString = $jsonContent | ConvertTo-Json -Depth 5    
    $jsonString | Set-Content -Path "package.json" -Force
}

$directories = Get-ChildItem -Directory | Where-Object { $_.Name -match '^\d{3}' } | Sort-Object Name

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

Write-Host "=================================================="
Write-Host "0. Empty"
Write-Host "1. Create-React-App"
Write-Host "2. Vite"
Write-Host "3. Next.js"
Write-Host "4. Remix"
Write-Host "--------------------------------------------------"
do {
    $templateOption = Read-Host "Which should be use?"
    switch ($templateOption) {
        "0" {
            New-Item -ItemType Directory -Path $projectName -Force | Out-Null
        }
        "1" {  
            npx create-react-app $projectName
            Set-Location $projectName
            npm run start
        }
        "2" {
            npm create vite@latest $projectName -- --template react 
            Set-Location $projectName
            Update-Package-Json
            npm install
            npm run dev
        }
        "3" {
            Write-Error "Not configured"
        }
        "4" {
            Write-Error "Not configured"
        }
        Default {
            Write-Error "Invalid option"
        }
    }
} while ($templateOption -notin "0", "1", "2", "3", "4")
Write-Host "=================================================="
