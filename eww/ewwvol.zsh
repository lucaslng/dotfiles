#!/bin/zsh

eww update "vol"=$([ $(pamixer --get-volume-human) = muted ] && echo "0" || echo ${$(pamixer --get-volume-human)%?})
