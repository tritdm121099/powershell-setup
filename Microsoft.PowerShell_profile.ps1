oh-my-posh init pwsh --config $PROFILE\..\themes\1_shell.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\Users\trich\OneDrive\Documents\PowerShell\themes\1_shell.omp.json' | Invoke-Expression

fnm env --use-on-cd | Out-String | Invoke-Expression

# Modules

Import-Module Terminal-Icons

Import-Module z

Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete

# Alias

## NeoVim

Function CDNvimConfig {Set-Location -Path $env:LOCALAPPDATA\nvim}
Set-Alias -Name nvimConfig -Value CDNvimConfig
Set-Alias vim nvim

## Get current path

Function GetCurrentdDirectory {
  return (pwd).Path
}
Function CopyCurrentDirectoryPath {
  here | Clip
}
Set-Alias here GetCurrentdDirectory
Set-Alias chere CopyCurrentDirectoryPath

