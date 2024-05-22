# Created by newuser for 5.9

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

export PATH="${PATH}:/home/${USER}/.bin"

# autoload
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b) '

# source
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# setopt
setopt autocd
setopt appendhistory
setopt promptsubst

stty stop undef

# prompt
#PROMPT='[ %~ ] ${vcs_info_msg_0_}> '
PROMPT=' ${vcs_info_msg_0_}> '
RPROMPT=''

# alias
alias grep='grep --color=auto'
alias ls='ls --color'
alias icat='kitty +kitten icat'
alias open='xdg-open'
alias icat='kitty +kitten icat'

# bindkey
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# pywal
(cat ~/.cache/wal/sequences &)
