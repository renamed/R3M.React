. .\helpers.ps1

git checkout main
git pull
$branchName = Read-Host "Enter the branch name"
$normalizedBranchName = Format-String $branchName

git checkout -b $normalizedBranchName
git push --set-upstream origin $normalizedBranchName