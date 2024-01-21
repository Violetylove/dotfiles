#!pwsh
#将git仓库中配置更新到应用
if (!(Test-Path -Path "~\.glaze-wm"))
{
    New-Item -ItemType Directory -Path "~\.glaze-wm"
}
if (!(Test-Path -Path "~\.config\scoop"))
{
    New-Item -ItemType Directory -Path "~\.config\scoop"
}
if (!(Test-Path -Path "~\AppData\Roaming\alacritty"))
{
    New-Item -ItemType Directory -Path "~\AppData\Roaming\alacritty"
}
if (!(Test-Path -Path "~\Documents\PowerShell"))
{
    New-Item -ItemType Directory -Path "~\Documents\PowerShell"
}

Copy-Item -Recurse -Force ..\windows\GlazeWM\config.yaml ~\.glaze-wm\.config.yaml
Copy-Item -Recurse -Force ..\windows\scoop/config.json ~\.config\scoop\config.json
Copy-Item -Recurse -Force ..\shell\alacritty ~\AppData\Roaming\alacritty
Copy-Item -Recurse -Force ..\shell\power_shell\Microsoft.PowerShell_profile.ps1 ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1



