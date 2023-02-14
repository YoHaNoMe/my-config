#!/bin/bash

while true
do
    DATE="$(~/.config/dwm-conf/dwmdate)"
    AUDIO="$(~/.config/dwm-conf/dwmaudio)"
    LAYOUT="$(xkb-switch | tr [:lower:] [:upper:])"
    xsetroot -name "^c#B87333^ $AUDIO ^d^ | ^c#934d68^ $DATE ^d^ | ^c#6F7986^ $LAYOUT"

    sleep 1m

done
