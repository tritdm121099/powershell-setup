# Powershell Setup

## Clone

```bash
git clone https://github.com/tritdm121099/tri-powershell-setup $PROFILE/..
```

## Scoop

```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Fnm - Nodejs manager version

```bash
scoop install main/fnm
```

## Theme - Oh My Posh

1. Install

```bash
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

2. Font

```bash
scoop bucket add nerd-fonts
scoop install nerd-fonts/Hack-NF
```
