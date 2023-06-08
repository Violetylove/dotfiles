## 介绍

- 本仓库存放vim配置文件

## 目录构成

### 一、Vim

- Vim默认将资源文件放置在``~/.vim``下，而配置文件放置在``~/.vimrc。``
- 使用插件管理器vim-plug时，去官网下载plug.vim文件。Linux系统放置到``~/.vim/autoload``目录下，Windows系统放置到``~/vimfile/autoload``目录下。
- Linux在``~/.vim``下，创建``plugged``目录存放插件，创建``colors``目录存放配色方案的vim文件。
- Windows在``~/vimfile``下，创建``plugged``目录存放插件，创建``colors``目录存放配色方案的vim文件。
- 另，Windows的``~``目录为``C:\Users\用户名``。



### 二、Neovim

- Neovim，简称为nvim
- Linux，所有文件，包括配置文件``init.vim``应放置在``~/.config/nvim``目录下。
- Windows，所有文件，包括配置文件``init.vim``应放置在``C:\Users\用户名\AppData\Local\nvim``目录下。
- ``nvim``目录下应包括目录``plugged``,``colors``，文件``init.vim``。
- 使用插件管理器vim-plug时，去官网下载plug.vim文件。放置到``nvim/autoload``目录下。



## Windows事项

- 我们知道Windows对Neovim的默认配置路径是``C:\Users\用户名\AppData\Local\nvim``，这极不利于我们管理。路径不好找，而且很长。所以，我们可以修改环境变量，设置默认的配置路径。
- 我们为添加两个环境变量，将路径设为自己想要的，比如我的：``D:\Global Config``。那么应配置：

```she
XDG_CONFIG_HOME=D:\Global Config
XDG_DATA_HOME=D:\Global Config
```

