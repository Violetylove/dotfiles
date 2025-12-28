
# Wirten by Winter Yuan.
# __        ___       _             __   __
# \ \      / (_)_ __ | |_ ___ _ __  \ \ / /   _  __ _ _ __
#  \ \ /\ / /| | '_ \| __/ _ \ '__|  \ V / | | |/ _` | '_ \
#   \ V  V / | | | | | ||  __/ |      | || |_| | (_| | | | |
#    \_/\_/  |_|_| |_|\__\___|_|      |_| \__,_|\__,_|_| |_|


######################## base ##########################
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete # Tab调出补全菜单
Set-PSReadLineKeyHandler -Key "Ctrl+RightArrow" -Function ForwardWord # 逐字补全

###################### modules #########################
# modules需要安装。使用命令 Install-Module
# Icons
Import-Module Terminal-Icons
# Z
Import-Module z

###################### aliases #########################
Set-Alias clg clang
Set-Alias cl+ clang++
Set-Alias gnv neovide
Set-Alias s scoop
Set-Alias v nvim
Set-Alias y yarn

###################### functions #########################
function .. { Set-Location .. }
function et { exit }
function ll { lsd -la }
#### git ####
function cma { git commit --amend }
function cmt { git commit -m @args }
function gst { git status }
function gsw { git switch @args}
function gpr { git config --global http.proxy localhost:7890 }
function gupr { git config --global --unset http.proxy }
function gcl {
    param (
        [Parameter(
	    Mandatory=$true,
	    HelpMessage = "请输入克隆地址"
	)]
        [string]$url
    )
    git clone $url
}
function ga {
    param (
        [Parameter(
	    Mandatory=$true,
	    HelpMessage = "请输入提交文件"
	)]
        [string]$fileName
    )
    git add $fileName
}

#### Scoop ####
function spr { scoop config proxy localhost:7890 }
function supr { scoop config rm proxy }
function sis {
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop install $AppName
}
function sui {
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop uninstall $AppName
}
function sud {
    param (
        [string]$AppName
    )
    scoop update $AppName
}
function ssc {
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop search $AppName
}
# yarn
function ya { yarn add @args }
function yad { yarn add --dev @args }
function yr { yarn remove @args }
function yi { yarn install @args }
function yd { yarn dev @args }
function yb { yarn build @args }
function ys { yarn start @args }
function yup { yarn upgrade @args }
#################### 主题  #######################
# oh-my-posh
# emodipt-extend
# multiverse-neon
# oh-my-posh init pwsh --config 'C:\Users\ayana\winter-install\scoop\apps\oh-my-posh\current\themes\emodipt-extend.omp.json' | Invoke-Expression
#
# starship
Invoke-Expression (&starship init powershell)
