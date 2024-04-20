#!/usr/bin/bash
#将git仓库中配置更新到应用

cp -rf ../idea/.ideavimrc ~/.ideavimrc
cp -rf ../vscode/.vscodevimrc ~/.vscodevimrc
mkdir -p ~/.config/Code/User
cp -rf ../vscode/settings.json ~/.config/Code/User/settings.json
cp -rf ../vscode/keybindings.json ~/.config/Code/User/keybindings.json
cp -rf ../git/.gitconfig ~/.gitconfig
cp -rf ../nvim ~/.config
cp -rf ../shell/alacritty ~/.config
cp -rf ../shell/zsh/.zshrc ~/.zshrc
cp -rf ../shell/zsh/.zimrc ~/.zimrc
cp -rf ../linux/neofetch ~/.config
mkdir -p ~/Pictures & cp -rf ../backgrounds ~/Pictures
