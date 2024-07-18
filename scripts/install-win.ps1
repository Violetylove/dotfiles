#!pwsh
#将git仓库中配置更新到应用
# if (!(Test-Path -Path ~\.glaze-wm)){
#     New-Item -ItemType SymbolicLink -Path ~\.glaze-wm\config.yaml -Target ..\windows\GlazeWM\config.yaml
# }
if (!(Test-Path -Path ~\.config)){
    New-Item -ItemType Directory -Path ~\.config
}
if(! (Test-Path -Path ~\.config\wezterm)){
    new-Item -ItemType SymbolicLink -Path ~\.config\wezterm -Target ..\shell\wezterm
}
new-Item -ItemType SymbolicLink -Path ~\.config\scoop\config.json -Target ..\windows\scoop\config.json


if (!(Test-Path -Path ~\AppData\Roaming)){
    New-Item -ItemType Directory -Path ~\AppData\Roaming
}
if (!(Test-Path -Path ~\AppData\Roaming\nvim)){
    New-Item -ItemType SymbolicLink -Path ~\AppData\Roaming\nvim -Target ..\nvim
}
if (Test-Path -Path ~\Documents\PowerShell) {
    New-Item -ItemType SymbolicLink -Path ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -Target ..\shell\power_shell\Microsoft.PowerShell_profile.ps1
}

new-Item -ItemType SymbolicLink -Path ~\.ideavimrc -Target ..\idea\.ideavimrc
new-Item -ItemType SymbolicLink -Path ~\.gitconfig -Target ..\git\.gitconfig
new-Item -ItemType SymbolicLink -Path ~\.vscodevimrc -Target ..\vscode\.vscodevimrc
