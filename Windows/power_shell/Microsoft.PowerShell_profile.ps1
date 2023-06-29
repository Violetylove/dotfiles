
# Wirten by Winter Yuan.
# __        ___       _             __   __
# \ \      / (_)_ __ | |_ ___ _ __  \ \ / /   _  __ _ _ __
#  \ \ /\ / /| | '_ \| __/ _ \ '__|  \ V / | | |/ _` | '_ \
#   \ V  V / | | | | | ||  __/ |      | || |_| | (_| | | | |
#    \_/\_/  |_|_| |_|\__\___|_|      |_| \__,_|\__,_|_| |_|

###################### modules #########################
# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
# Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete # Tab调出补全菜单
Set-PSReadLineKeyHandler -Key "Ctrl+u" -Function Undo # 撤销操作
Set-PSReadLineKeyHandler -Key "Ctrl+RightArrow" -Function ForwardWord # 逐字补全
# 上下方向键箭头，搜索历史中进行自动补全
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Z
Import-Module z

# posh-git
Import-Module posh-git

# Get-ChildItemColor
# Import-Module Get-ChildItemColor

# PSColor
Import-Module PSColor

###################### aliases #########################


#################### on-my-posh  #######################
oh-my-posh init pwsh --config 'C:\Users\23879\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json' | Invoke-Expression
# 主题
# kali
# star
# kushal
# night-owl
# takuya
# montys

###################### starship ########################
#Invoke-Expression (&starship init powershell)
# 配置文件位置
#$ENV:STARSHIP_CONFIG = "$HOME/.config/starship.toml"
# 其他配置
#function Invoke-Starship-PreCommand {
#    $host.ui.Write("🚀 Ayanami Rei")
#}

###################### musicfox ########################
Set-Alias -Name wyy -Value musicfox

###################### komorebi ########################
# 启动
function kost { komorebic start }
# 关闭,同时关闭whkd
function kosp { komorebic stop && whsp }
# 设置路径 
# 注意，必须写绝对路径，不能用 ~ 代替用户目录。Windows真烦
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\23879\.config\komorebi'

######################## whkd ##########################
# 理论上，komorebi启动时，whkd会启动。
# 但以防万一，设置一个启动函数
function whst { Start-Process whkd -WindowStyle hidden }
# 关闭函数
function whsp { taskkill /f /im whkd.exe }

######################## yasb ##########################
# 启动
function yast { D:\WorkSoftware\yasb\src\ya.st.pyw }
# 关闭
function yasp { taskkill /f /im pythonw3.9.exe }

# 同时启动komorebi和yasb的函数
function koyast { kost && yast }
# 同时关闭komorebi和yasb的函数
function koyasp { kosp && yasp }

###################### neovide #########################
Set-Alias -Name gvim -Value neovide
