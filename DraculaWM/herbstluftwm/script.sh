#!/bin/bash
xrandr | grep 'HDMI-0 connected' && xrandr --output LVDS --auto --output HDMI-0 --auto --left-of LVDS
xrdb ~/.Xresources
