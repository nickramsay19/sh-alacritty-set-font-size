# Set Alacritty Font Size | sh-alacritty-set-font-size
> Nicholas Ramsay

* Sets all current Alacritty terminal font sizes via IPC sockets. 
* Also sets future Alacritty terminal font sizes if launched via `alacritty -o font.size=$(cat /home/sizzler/.config/alacritty/font-size.txt)`.
    * This is messy, but the only alternatives are:
        1. To modify `font.size` value in the config file itself, or
        2. To run the above operation as a daemon that checks for new Alacritty sockets.

This script can be leveraged to set further Alacritty options in runtime.
