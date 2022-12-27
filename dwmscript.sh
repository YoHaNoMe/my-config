#!/bin/bash

while true
do
    DATE="$(~/.config/dwm-conf/dwmdate)"
    AUDIO="$(~/.config/dwm-conf/dwmaudio)"
    xsetroot -name "^c#B87333^ $AUDIO ^d^ | ^c#934d68^ $DATE"

    sleep 1m

done