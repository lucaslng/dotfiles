#!/bin/sh

[ "0" != "$(cat /sys/class/power_supply/macsmc-battery/time_to_full_now)" ] && echo "$(cat /sys/class/power_supply/macsmc-battery/time_to_full_now)" || echo "$(cat /sys/class/power_supply/macsmc-battery/time_to_empty_now)"
