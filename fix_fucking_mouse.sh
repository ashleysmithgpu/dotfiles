#!/bin/bash


export DISPLAY=`ps -u $(id -u) -o pid= | xargs -I{} cat /proc/{}/environ 2>/dev/null | tr '\0' '\n' | grep -m1 '^DISPLAY=' | sed 's/DISPLAY=//g'`
export XAUTHORITY=`ps -u $(id -u) -o pid= | xargs -I{} cat /proc/{}/environ 2>/dev/null | tr '\0' '\n' | grep -m1 '^XAUTHORITY=' | sed 's/XAUTHORITY=//g'`

xinput --list | grep 'Kingsis Peripherals  Evoluent VerticalMouse 3' | grep -o 'id=[0-9]*' | cut -f2- -d= | while read id; do xinput set-button-map $id 1 2 3 4 5 6 7 0; done
