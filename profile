# setup XDG_RUNTIME_DIR (required by wayland)
#if [ -z "$XDG_RUNTIME_DIR" ]; then
#    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
#    mkdir -pm 0700 "$XDG_RUNTIME_DIR"
#    export XDG_RUNTIME_DIR
#fi

# XDG
XDG_CONFIG_HOME="$HOME"/.config
XDG_CACHE_HOME="$HOME"/.cache
XDG_DATA_HOME="$HOME"/.local/share
XDG_STATE_HOME="$HOME"/.local/state

# set ZDOTDIR
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
