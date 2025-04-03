export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

export PAGER=less
umask 022

# shell config dir
[ -z $XDG_CONFIG_DIR ] && export XDG_CONFIG_DIR=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_DIR/zsh

# env var
export CARGO_HOME=$XDG_CONFIG_DIR/cargo

# default PS1
PS1=' '
[ "$(id -u)" -eq 0 ] && PS1="${PS1}# " || PS1="${PS1}\$ "

# autoload scripts
for script in /etc/profile.d/*.sh ; do
	if [ -r "$script" ] ; then
		. "$script"
	fi
done

# setup XDG_RUNTIME_DIR (required by wayland)
if [ -z "$XDG_RUNTIME_DIR" ]; then
    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
    mkdir -pm 0700 "$XDG_RUNTIME_DIR"
    export XDG_RUNTIME_DIR
fi

unset script
