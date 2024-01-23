#!/usr/bin/bash
#将git仓库中配置更新到应用

cp -rf ../idea/.ideavimrc ~/.ideavimrc
cp -rf ../vscode/.vscodevimrc ~/.vscodevimrc
cp -rf ../git/.gitconfig ~/.gitconfig
cp -rf ../nvim ~/.config
cp -rf ../shell/alacritty ~/.config
cp -rf ../shell/zsh/.zshrc ~/.zshrc
cp -rf ../shell/zsh/.zimrc ~/.zimrc
cp -rf ../linux/dunst ~/.config
cp -rf ../linux/rofi ~/.config
cp -rf ../linux/i3 ~/.config
cp -rf ../linux/neofetch ~/.config
cp -rf ../linux/picom ~/.config
cp -rf ../linux/polybar ~/.config
sudo mkdir -p /usr/share/sddm/themes & sudo cp -rf ../linux/sddm/themes /usr/share/sddm
sudo cp -rf ../linux/sddm/sddm.conf /etc/sddm.conf
mkdir -p ~/Pictures & cp -rf ../backgrounds ~/Pictures
