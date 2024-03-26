# https://wiki.archlinux.org/title/xinit#Autostart_X_at_login
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
