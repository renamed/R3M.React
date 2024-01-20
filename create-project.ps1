function Normalize-String($str) {
    $normalizedString = $str -replace '[^\w\s]', '' -replace '\s', '-'
    return $normalizedString.ToLower()
}

$classNumber = Read-Host "Enter the class number"
$description = Read-Host "Enter the class description"

$formattedClassNumber = "{0:D3}" -f [int]$classNumber

$normalizedDescription = Normalize-String $description

$folderName = "class-$formattedClassNumber-$normalizedDescription"
New-Item -ItemType Directory -Path $folderName -Force | Out-Null

Write-Host "Folder created successfully: $folderName"

cd $folderName
npx create-react-app $normalizedDescription