# Prompt = oh-my-posh.dev
# Installation = winget install JanDeDobbeleer.OhMyPosh -s winget
# Setup = oh-my-posh init pwsh | Invoke-Expression 
# oh-my-posh = custom prompt - dualsimplicity - author - devbytemehedi
# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/devbytemehedi/dotfiles-windows/main/pwsh/oh-my-posh/dualsimplicity.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config '~/.config/pwsh/oh-my-posh/dualsimplicity.omp.json' | Invoke-Expression

# Terminal-Icons
# Installation = Install-Module -Name Terminal-Icons -Repository PSGallery
# Setup = Import-Module -Name Terminal-Icons
Import-Module -Name Terminal-Icons


# PSReadLine
# Installation = Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# Setup = Import-Module -Name PSReadLine
# Import-Module -Name PSReadLine

# PSReadLineOption
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key 'Alt+j' -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key 'Alt+k' -Function HistorySearchBackward
Set-PSReadLineOption -HistorySavePath '~/.config/pwsh/command-history.txt'



# Z = directory jumper
# Installation = Install-Module -Name z
# Import-Module -Name z
# History Location = "C:\Users\Mehedi\.cdHistory"


# Aliases
set-alias nn nano
set-alias ch choco
set-alias su gsudo
set-alias wg winget
set-alias np notepad
set-alias xp explorer
set-alias grep findstr
set-alias find Get-ChildItem
set-alias wget Invoke-WebRequest
set-alias -Name lw -Value "C:\Program Files\LibreWolf\librewolf.exe"

# Git 
# Installation = wg install --id Git.Git -e -s winget

# Git Alias
set-alias g git
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Sys Alias
Set-Alias shutdown Stop-Computer -Force
Set-Alias restart Restart-Computer -Force

# Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

