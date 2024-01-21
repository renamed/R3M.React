$commitMessage = Read-Host "Enter the commit description"

git add .
git commit -m "Class $commitMessage"
git push