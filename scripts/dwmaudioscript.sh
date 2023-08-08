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
    pkill -RTMIN+10 dwmblocks
elif [ $1 == 'd' ]; then
    pulseaudio-ctl down
    pkill -RTMIN+10 dwmblocks
elif [ $1 == 'm' ]; then
    pulseaudio-ctl mute-input
    pkill -RTMIN+10 dwmblocks
else
    echo "Invalid parameter"
fi