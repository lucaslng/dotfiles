#!/bin/sh

focused=$(hyprctl monitors | grep focused: | awk 'NR==1{print $2}')
mode=$1

if test "$focused" = "yes" 
then
    rofi -show "$mode"
else
    rofi -show "$mode" -config ~/.config/rofi/config2.rasi 
fi
