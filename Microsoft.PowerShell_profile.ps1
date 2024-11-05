oh-my-posh init pwsh --config $PROFILE\..\themes\1_shell.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\Users\trich\OneDrive\Documents\PowerShell\themes\1_shell.omp.json' | Invoke-Expression

fnm env --use-on-cd | Out-String | Invoke-Expression

# Modules
if (-not (Get-Module -ListAvailable -Name Terminal-Icons)) {
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force -SkipPublisherCheck
}
Import-Module Terminal-Icons

Import-Module z

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord "RightArrow" -Function ForwardWord
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord

Import-Module CompletionPredictor

# Network Utilities
function Get-PubIP { 
 	return (Invoke-WebRequest http://ifconfig.me/ip).Content 
}

# PS version
function Get-Version {
  $PSVersionTable.PSVersion
}

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

