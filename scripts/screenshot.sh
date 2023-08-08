#!/bin/bash

if [ -z $1 ]; then
    echo "Invalid: no parameters found!"
elif [ ! -z $2 ]; then
    echo "Invalid: only one parameter is allowed!"
elif [ $1 == 's' ]; then
    maim -s /home/youssef/Pictures/$(date +%d_%m_%Y_%I:%M:%S).png >/dev/null 2>&1
elif [ $1 == 'f' ]; then
    maim /home/youssef/Pictures/$(date +%d_%m_%Y_%I:%M:%S).png >/dev/null 2>&1
else
    echo "Invalid parameter"
fi

if [ $1 == 's' ] || [ $1 == 'f']; then
    dunstify -a "Screenshot" --action="saveScreenshot,Save" "screenshot saved successfully" -u normal
fi
