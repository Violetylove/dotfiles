# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ENABLE_CORRECTION="true"
COMPLETION_CASE_INSENSITIVE="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
# 将历史记录文件设置为 ~/.zsh_history，并在每次命令执行后更新历史记录（不用等到退出才写入）
HISTFILE=~/.zsh_history
HISTSIZE=10000    # 设置历史记录条目数量（可自定义大小）
SAVEHIST=$HISTSIZE # 保存的历史记录条目数量与之匹配

export LANG=zh_CN.UTF-8
export EDITOR='nvim'
# export ARCHFLAGS="-arch x86_64"

alias ..="cd .."
alias cmt="git add -A ;git commit -m"
alias cls="clear"
alias et="exit"
alias lgit="lazygit"
alias ls="lsd -a"
# alias ls="ls -a"
alias neof="neofetch"
alias gpr="git config --global http.proxy localhost:2081"
alias gupr="git config --global --unset http.proxy"
alias gv="neovide"
alias pac="sudo pacman"
alias par="paru"
alias prr="prime-run"
alias reset="source ~/.zshrc;cls"
alias v="nvim"
alias wyy="musicfox"

######### keybindings ############
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[2~"  clear-screen
bindkey  "^[[3~"  delete-char

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
