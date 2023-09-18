#!/bin/bash

FONT_SIZE="$1"

# set the font size of every currently running term
ALACRITTY_SOCKET_PATH='/run/user/1000'
ALACRITTY_SOCKETS="$ALACRITTY_SOCKET_PATH/Alacritty-:*.sock"

for socket in $ALACRITTY_SOCKETS; do
    sudo alacritty msg -s "$socket" config -w -1 font.size=$FONT_SIZE
done

# set the config file for future terminals
ALACRITTY_FONT_SIZE="$XDG_CONFIG_HOME/alacritty/font-size.txt"
echo "$FONT_SIZE" | sudo tee "$ALACRITTY_FONT_SIZE" > '/dev/null'
