#!pwsh
#将应用配置更新到git仓库中

Copy-Item -Recurse -Force ~\.glaze-wm\config.yaml ..\windows\GlazeWM\config.yaml
Copy-Item -Recurse -Force ~\.gitconfig ..\git\.gitconfig
Copy-Item -Recurse -Force ~\.config\scoop\config.json ..\windows\scoop\config.json
# Copy-Item -Recurse -Force ~\AppData\Roaming\alacritty ..\shell 
Copy-Item -Recurse -Force ~\AppData\local\nvim ..\
Copy-Item -Recurse -Force ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 ..\shell\power_shell\Microsoft.PowerShell_profile.ps1


