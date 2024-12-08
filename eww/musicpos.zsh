#!/bin/zsh

while true
do 
    position=$(playerctl position --player spotify)*100000000
    length=$(playerctl metadata mpris:length)
    pos=$position/$length
    printf "%.*f\n" "6" "$pos"
    sleep 0.5 
done
