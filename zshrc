# Created by newuser for 5.6.2
export EDITOR=nano
export VISUAL=nano
export LANG='en_US.UTF-8'
export LC_ALL=$LANG
export HISTFILE=~/.zsh_history
export HISTSIZE=8192
export SAVEHIST=$HISTSIZE

autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit

setopt alwaystoend
setopt autocd
setopt autopushd
setopt completeinword
setopt correct
setopt extendedglob
setopt extendedhistory
setopt histignorealldups
setopt histignorespace
setopt histreduceblanks
setopt listtypes
setopt nobeep
setopt nocaseglob
setopt noclobber
setopt nullglob

zstyle ':completion:*' auto-description 'specify %d'
zstyle ':completion:*' cache-path ~/.zsh_cache
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*' format 'completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' hosts off
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' use-cache on
zstyle ':completion:*' verbose yes

PS1="%{$fg[violet]%}%h %{$fg[green]%}%~ %{$reset_color%}% "
SPROMPT="$fg[orange]%R$reset_color did you mean $fg[blue]%r?$reset_color "

function colours {
  for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
  done
}
function zshaddhistory {
  whence ${${(z)1}[1]} >| /dev/null || return 1
  local line cmd
  line=${1%%$'\n'}
  cmd=${line%% *}
  [[ ${#line} -ge 5 \
    && ${cmd} != 
((p|)kill|(s|)rm|(s|cp)|file|feh|man|cat|ls|cd|chmod|mv|tar|ent|less|head|mkdir)
  ]]
}
function path {
  if [[ -d "$1" ]] ; then
    if [[ -z "$PATH" ]] ; then
      export PATH=$1
    else
      export PATH=$PATH:$1
    fi
  fi
}

export PATH=''
path /usr/local/sbin
path /usr/local/bin
path /usr/sbin
path /usr/bin
path /sbin
path /bin
#export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias l="ls -hFG"
alias la="ls -AFG"
alias ll="ls -lhaFG" 
alias cat="ccat"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

