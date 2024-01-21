function Format-String($str) {
    $normalizedString = $str -replace '[^\w\s]', '' -replace '\s', '-'
    return $normalizedString.ToLower()
}

function Get-Branch-Name() {
    return git rev-parse --abbrev-ref HEAD
}