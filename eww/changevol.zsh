#!/bin/zsh

[ $1 = "up" ] && pamixer -i 10 || pamixer -d 10

eww update vol=$(pamixer --get-volume)
