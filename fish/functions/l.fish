function l
    $argv > /dev/null 2> /dev/null &
    disown
    exit
end
