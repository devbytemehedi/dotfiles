#Prompt
#oh-my-posh init pwsh | Invoke-Expression 
oh-my-posh init pwsh --config '~/.config/pwsh/oh-my-posh/dualsimplicity.omp.json' | Invoke-Expression

#Aliases
Set-Alias wg winget
Set-Alias ch choco
Set-Alias xp explorer
Set-Alias np notepad
Set-Alias nn nano
Set-Alias wget Invoke-WebRequest
Set-Alias find Get-ChildItem
# Set-Alias g git
# Set-Alias gc git clone
# Set-Alias ga git add
# Set-Alias gcm "git commit -m"
# Set-Alias gp git push
# Set-Alias gl git pull
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias shutdown Stop-Computer -Force
Set-Alias restart Restart-Computer -Force

#Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}


#PSReadLine
Import-Module PSReadLine


Set-PSReadLineOption -PredictionSource History
#Set-PSReadlineOption -HistorySaveStyle SaveOnlyLast

# History Location = (Get-PSReadlineOption).HistorySavePath
#Set-PSReadLineOption -PredictionViewStyle ListView
#Set-PSReadLineKeyHandler -key Tab -Function complete






#Terminal-Icons
Import-Module -Name Terminal-Icons
