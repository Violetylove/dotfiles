#!/usr/bin/bash
#将应用配置更新到git仓库中

cp -rf ~/.zshrc ../shell/zsh/.zshrc
cp -rf ~/.zimrc ../shell/zsh/.zimrc
cp -rf ~/.gitconfig ../git/.gitconfig
cp -rf ~/.ideavimrc ../idea/.ideavimrc
cp -rf ~/.config/Code/User/settings.json ../vscode/settings.json 
cp -rf ~/.config/Code/User/keybindings.json ../vscode/keybindings.json
cp -rf ~/.vscodevimrc ../vscode/.vscodevimrc
cp -rf ~/.config/alacritty ../shell/
cp -rf ~/.config/nvim ../
cp -rf ~/.config/dunst ../linux/
cp -rf ~/.config/rofi ../linux/
cp -rf ~/.config/i3 ../linux/
cp -rf ~/.config/neofetch ../linux/
cp -rf ~/.config/picom ../linux/
cp -rf ~/.config/polybar ../linux/
sudo cp -rf /usr/share/sddm/themes ../linux/sddm/
sudo cp -rf /etc/sddm.conf ../linux/sddm/sddm.conf
cp -rf ~/Pictures/backgrounds ../
