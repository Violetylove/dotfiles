
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
Set-Alias v nvim
Set-Alias s scoop

###################### functions #########################
function .. ()
{
    Set-Location ..
}
function et
{ 
    exit 
}
#### git ####
function gcl
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$url
    )
    git clone $url
}
function gst ()
{
    git status
}
function gcmt
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$msg
    )
    git commit -m $msg
}
function ga
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$fileName
    )
    git add $fileName
}
function gaa
{
    git add --all
}
function gpr
{
    git config --global http.proxy localhost:7890
}
function gupr
{
    git config --global --unset http.proxy 
}

#### Scoop ####
function spr
{
    scoop config proxy localhost:7890
}
function supr
{
    scoop config rm proxy 
}
# scoop安装函数
function sis
{
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop install $AppName
}
# scoop卸载函数
function sui
{
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop uninstall $AppName
}
# scoop更新函数
function sud
{
    param (
        [string]$AppName
    )
    scoop update $AppName
}
# scoop搜索函数
function ssc
{
    param (
        [Parameter(Mandatory=$true)] # 表示此参数是必需的
        [string]$AppName
    )
    scoop search $AppName
}
#################### on-my-posh  #######################
oh-my-posh init pwsh --config 'D:\WinterVInstall\Scoop\apps\oh-my-posh\current\themes\multiverse-neon.omp.json' | Invoke-Expression
# 主题
# emodipt-extend
# multiverse-neon

###################### musicfox ########################
Set-Alias -Name wyy -Value musicfox







