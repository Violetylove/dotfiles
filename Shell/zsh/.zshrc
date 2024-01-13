ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

export LANG=zh_CN.UTF-8
export EDITOR='vim'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias ..="cd .."
alias cmt="git add -A ;git commit -m"
alias cls="clear"
alias et="exit"
alias ls="ls -a"
alias gpr="git config --global http.proxy localhost:2081"
alias gupr="git config --global --unset http.proxy"
alias pac="sudo pacman"
alias reset="source ~/.zshrc;cd ~;cls"
alias v="nvim"
alias w="nitrogen --set-auto ~/Beautify/Background/room.png"
alias wyy="musicfox"

######### Zim ############
zstyle ':zim:zmodule' use 'degit'
zstyle ':zim:git' alias-prefix 'g'
ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh
alias zf="zimfw"
