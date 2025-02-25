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
alias py='python'
alias icat='kitty +kitten icat'
alias open='xdg-open'
alias cage='XKB_DEFAULT_LAYOUT=br cage -ds --'
alias dd='sudo dd bs=4M conv=fsync oflag=direct status=progress'
alias asciidoctor='asciidoctor -r asciidoctor-pdf'
alias clock='watch -t -n 1 date "+%H:%M:%S"'

qemu-open() {
  qemu-system-x86_64 -enable-kvm -m 8G -drive file=$1,format=raw,if=virtio -device virtio-vga-gl -device virtio-sound-pci,audiodev=snd0 -audiodev alsa,id=snd0 -display sdl,gl=on -cpu host $2
}

# bindkey
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
bindkey '^[[3~' delete-char

