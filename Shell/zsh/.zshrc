if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

# Themes
# ZSH_THEME="gozilla"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# 大小写精确匹配
# CASE_SENSITIVE="true"

# zstyle ':omz:update' mode disabled  # disable, auto, reminder

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

plugins=(
    git 
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/plugins/*

export LANG=zh_CN.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias et="exit"
alias cls="clear"
alias gpr="git config --global http.proxy localhost:7890"
alias gupr="git config --global --unset http.proxy"
alias s=scoop
alias spr="scoop config proxy localhost:7890"
alias supr="scoop config rm proxy"
alias vi="nvim"
alias wyy="musicfox"
alias zshconfig="nvim ~/.zshrc"

###### Scoop ######
# 安装
sis() {
    scoop install "$@"
}
# 卸载
sui() {
    scoop uninstall "$@"
}
# 更新
sud() {
  if [[ $# -eq 0 ]]; then
    # 如果没有参数，执行默认操作
    scoop update
  else
    # 如果有参数，处理参数
    for arg in "$@"; do
      scoop update $arg
    done
  fi
}
# 搜索
ssc() {
    scoop search "$@"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
