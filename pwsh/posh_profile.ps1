oh-my-posh --init --shell pwsh --config ~/git/dotfiles/themes/poshtheme_win.omp.json | Invoke-Expression
Set-Alias -Name rdns -Value Resolve-DnsName -Scope Global
Import-Module -Name Terminal-Icons