
# Wirten by Winter Yuan.
# __        ___       _             __   __
# \ \      / (_)_ __ | |_ ___ _ __  \ \ / /   _  __ _ _ __
#  \ \ /\ / /| | '_ \| __/ _ \ '__|  \ V / | | |/ _` | '_ \
#   \ V  V / | | | | | ||  __/ |      | || |_| | (_| | | | |
#    \_/\_/  |_|_| |_|\__\___|_|      |_| \__,_|\__,_|_| |_|

if (!(Get-Process whkd -ErrorAction SilentlyContinue))
{
    Start-Process whkd -WindowStyle hidden
}

. $PSScriptRoot\komorebi.generated.ps1

# Send the ALT key whenever changing focus to force focus changes
komorebic alt-focus-hack enable
# Default to cloaking windows when switching workspaces
komorebic window-hiding-behaviour cloak
# Set cross-monitor move behaviour to insert instead of swap
komorebic cross-monitor-move-behaviour insert
# Enable hot reloading of changes to this file
komorebic watch-configuration enable

# Create named workspaces I-V on monitor 0
komorebic ensure-named-workspaces 0 Ayanami Violet Mikasa
# komorebic ensure-named-workspaces I II III IV V

# 为工作空间设置名字
# komorebic workspace-name 0 0 Ayanami
# komorebic workspace-name 0 1 Violet
# komorebic workspace-name 0 2 Mikasa

# Assign layouts to workspaces, possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
komorebic named-workspace-layout I bsp

# 屏幕间距
komorebic workspace-padding 0 0 2
# 窗口间距
komorebic container-padding 0 0 1

# Uncomment the next lines if you want a visual border around the active window
# komorebic active-window-border-colour 66 165 245 --window-kind single
# komorebic active-window-border-colour 256 165 66 --window-kind stack
# komorebic active-window-border-colour 255 51 153 --window-kind monocle
# komorebic active-window-border enable

# Configure the invisible border dimensions
komorebic invisible-borders 1 0 1 1

komorebic complete-configuration
