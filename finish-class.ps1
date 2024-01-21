. .\helpers.ps1

$commitMessage = Read-Host "Enter the commit description"

$branchName = git rev-parse --abbrev-ref HEAD

git add .
git commit -m $commitMessage
git push

if ($branchName -ne "main") {
    git checkout main
    git pull --rebase origin $branchName
    git push
}