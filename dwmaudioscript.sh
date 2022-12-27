#!/bin/bash

### Help function ###

Help(){
    echo "Increase/Decrease the volume, mute/unmute microphone"
    echo
    echo "Syntax: script [h|u|d|m]"
    echo
    echo "parameters:"
    echo "h Help"
    echo "u Increate volume"
    echo "d Decrease volume"
    echo "m mute volume"
    echo
}

if [ -z $1 ]; then
    echo "Invalid: no parameters found!"
elif [ ! -z $2 ]; then
    echo "Invalid: only one parameter is allowed!"
elif [ $1 == 'h' ]; then
    Help
elif [ $1 == 'u' ]; then
    pulseaudio-ctl up
    /home/youssef/.config/dwm-conf/dwmreloadscript &
elif [ $1 == 'd' ]; then
    pulseaudio-ctl down
    /home/youssef/.config/dwm-conf/dwmreloadscript &
elif [ $1 == 'm' ]; then
    pulseaudio-ctl mute-input
    /home/youssef/.config/dwm-conf/dwmreloadscript &
else
    echo "Invalid parameter"
fi