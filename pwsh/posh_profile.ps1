oh-my-posh --init --shell pwsh --config ~/git/dotfiles/themes/poshtheme_win.omp.json | Invoke-Expression
Set-Alias -Name rdns -Value Resolve-DnsName -Scope Global
Set-Alias -Name code -Value codium -Scope Global
Import-Module -Name Terminal-Icons