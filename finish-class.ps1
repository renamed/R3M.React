$description = Read-Host "Enter the commit description"

git add .
git commit -m $description
git push --set-upstream origin $description