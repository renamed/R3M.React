$description = Read-Host "Enter the commit description"
$commitMessage = "Class $description"

$branchName = git rev-parse --abbrev-ref HEAD

git add .
git commit -m $description
git push

if ($branchName -ne "main") {
    git checkout main
    git pull --rebase origin $branchName
}

