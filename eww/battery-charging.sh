#!/bin/sh

bat=/sys/class/power_supply/macsmc-battery

upower --monitor-detail | while read -r
do
    [ "$(cat "$bat/status")" = "Charging" ] && echo "" || echo ""
done
exit

