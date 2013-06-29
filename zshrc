export LANG=ja_JP.UTF-8
export EDITOR=vim
alias tmux="tmux -u2"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^R'    history-incremental-search-backward  

autoload -U compinit
compinit
autoload run-help
autoload colors

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                                      /usr/sbin /usr/bin /sbin /bin
setopt auto_pushd
setopt hist_ignore_dups
setopt pushd_ignore_dups
unsetopt share_history
setopt extended_history
setopt no_clobber 
setopt no_beep
setopt correct


