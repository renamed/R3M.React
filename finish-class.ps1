$description = Read-Host "Enter the commit description"
$commitMessage = "Class $description"
git add .
git commit -m $description
git push