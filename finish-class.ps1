$commitMessage = Read-Host "Enter the commit description"

$branchName = Get-Branch-Name

git add .
git commit -m $commitMessage
git push

if ($branchName -ne "main") {
    git checkout main
    git pull --rebase origin $branchName
}