. .\helpers.ps1
. .\finish-class.ps1

$branchName = Get-Branch-Name
if ($branchName -ne "main") {
    git checkout main
    git pull --rebase origin $branchName
    git push
}