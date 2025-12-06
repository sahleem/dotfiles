set fish_greeting

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        niri
    end
end
