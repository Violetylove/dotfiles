
# on-my-posh 配置
oh-my-posh init pwsh --config 'C:\Users\23879\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json' | Invoke-Expression
# 主题
# kali
# star
# kushal
# night-owl
# takuya
# montys

# starship配置
#Invoke-Expression (&starship init powershell)
# 配置文件位置
#$ENV:STARSHIP_CONFIG = "$HOME/.config/starship.toml"
# 其他配置
#function Invoke-Starship-PreCommand {
#    $host.ui.Write("🚀 Ayanami Rei")
#}

# 终端图标配置
Import-Module -Name Terminal-Icons
Import-Module PSReadLine


# musicfox
Set-Alias -Name wyy -Value musicfox

# komorebic
# 启动
function kost {
    komorebic start
}
# 停止
 function kosp {
    komorebic stop
 }
 # 设置路径
 $Env:KOMOREBI_CONFIG_HOME = '~/.config/komorebi'

# yasb
# 停止
function yasp {
    taskkill /f /im pythonw3.9.exe
}
