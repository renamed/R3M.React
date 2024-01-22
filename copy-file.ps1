. .\helpers.ps1

# Caminho do diretório
$lastDirectory = Get-ChildItem -Directory | Where-Object { $_.Name -match '^\d{3}' } | Sort-Object Name | Select-Object -Last 1

if ($null -ne $lastDirectory) {
    Set-Location $lastDirectory

    # Caminho dos arquivos
    $lastFile = Get-ChildItem -File | Where-Object { $_.Name -match '^class-\d{2}' } | Sort-Object Name | Select-Object -Last 1

    if ($null -ne $lastFile) {
        # Extrair o número da classe do nome do arquivo
        $currentClass = [regex]::Match($lastFile.BaseName, '\d{2}').Value

        # Aumentar a contagem em 1
        $newClassCount = [int]$currentClass + 1
        $fileName = Read-Host "Enter the file name"

        # Criar o novo nome do arquivo        
        $newFileName = "class-$('{0:D2}' -f $newClassCount)-$(Format-String $fileName).mjs"
        $diretorioDestino = $lastFile.Directory.FullName

        Copy-Item $lastFile.FullName -Destination $newFileName
    } else {
        Write-Error "No file found"        
    }
} else {
    Write-Error "No directory found"
}
