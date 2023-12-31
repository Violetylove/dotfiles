
# Wirten by Winter Yuan.
# __        ___       _             __   __
# \ \      / (_)_ __ | |_ ___ _ __  \ \ / /   _  __ _ _ __
#  \ \ /\ / /| | '_ \| __/ _ \ '__|  \ V / | | |/ _` | '_ \
#   \ V  V / | | | | | ||  __/ |      | || |_| | (_| | | | |
#    \_/\_/  |_|_| |_|\__\___|_|      |_| \__,_|\__,_|_| |_|

# CCleaner
komorebic.exe manage-rule exe CCleaner64.exe

# ElectronMail
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "ElectronMail.exe"

# Google Chrome
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "chrome.exe"

# IntelliJ IDEA
komorebic.exe identify-object-name-change-application exe "idea64.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "idea64.exe"
# Targets JetBrains IDE popups and floating windows
komorebic.exe float-rule class "SunAwtDialog"

# Microsoft Excel
komorebic.exe identify-border-overflow-application exe "EXCEL.EXE"
komorebic.exe identify-layered-application exe "EXCEL.EXE"
# Targets a hidden window spawned by Microsoft Office applications
komorebic.exe float-rule class "_WwB"

# Microsoft PC Manager
komorebic.exe float-rule exe "MSPCManager.exe"

# Microsoft PowerPoint
komorebic.exe identify-border-overflow-application exe "POWERPNT.EXE"
komorebic.exe identify-layered-application exe "POWERPNT.EXE"

# Microsoft Word
komorebic.exe identify-border-overflow-application exe "WINWORD.EXE"
komorebic.exe identify-layered-application exe "WINWORD.EXE"

# NVIDIA GeForce Experience
komorebic.exe identify-border-overflow-application exe "NVIDIA GeForce Experience.exe"

# OBS Studio (32-bit)
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "obs32.exe"

# OBS Studio (64-bit)
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "obs64.exe"

# PyCharm
komorebic.exe identify-object-name-change-application exe "pycharm64.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "pycharm64.exe"

# QQ
komorebic.exe manage-rule exe QQ.exe

# Steam
komorebic.exe identify-border-overflow-application class "vguiPopupWindow"

# Steam Beta
komorebic.exe identify-border-overflow-application class "SDL_app"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application class "SDL_app"
# Target notification toast popups
komorebic.exe float-rule title "notificationtoasts_"

# SystemSettings
komorebic.exe float-rule class "Shell_Dialog"

# Task Manager
komorebic.exe float-rule class "TaskManagerWindow"
komorebic.exe float-rule exe Taskmgr.exe

# TIM
komorebic.exe manage-rule exe TIM.exe

# TranslucentTB
komorebic.exe float-rule exe "TranslucentTB.exe"

# TranslucentTB
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "TranslucentTB.exe"

# Visual Studio
komorebic.exe identify-object-name-change-application exe "devenv.exe"

# Visual Studio Code
komorebic.exe identify-border-overflow-application exe "Code.exe"

# Visual Studio Code - Insiders
komorebic.exe identify-border-overflow-application exe "Code - Insiders.exe"

# WebTorrent Desktop
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "WebTorrent.exe"

# Windows Console (conhost.exe)
komorebic.exe manage-rule class "ConsoleWindowClass"

# Windows Explorer
# Targets copy/move operation windows
komorebic.exe float-rule class "OperationStatusWindow"
komorebic.exe float-rule title "Control Panel"

# Windows Installer
komorebic.exe float-rule exe "msiexec.exe"

# Wox
# Targets a hidden window spawned by Wox
komorebic.exe float-rule title "Hotkey sink"

