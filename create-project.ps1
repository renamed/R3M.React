function Normalize-String($str) {
    $normalizedString = $str -replace '[^\w\s]', '' -replace '\s', '-'
    return $normalizedString.ToLower()
}

git checkout main

$classNumber = Read-Host "Enter the class number"
$description = Read-Host "Enter the class description"

$formattedClassNumber = "{0:D3}" -f [int]$classNumber

$normalizedDescription = Normalize-String $description

$folderName = "$formattedClassNumber-$normalizedDescription"

git checkout -b $folderName
git push --set-upstream origin $folderName

New-Item -ItemType Directory -Path $folderName -Force | Out-Null

Write-Host "Folder created successfully: $folderName"

cd $folderName
# npx create-react-app $normalizedDescription
npm create vite@latest $normalizedDescription -- --template react

cd $normalizedDescription
npm install
npm run dev