#!/bin/sh

#dbus-daemon --session --nofork --nopidfile --address=unix:path=/run/user/1000/bus &

# tiramisu notifications
tiramisu &

# hyprland autostart
# brightnessctl -d kbd_backlight s 50% &
hyprctl setcursor Catppuccin-Mocha-Blue-Cursors 24 &
udiskie &
# libinput-gestures &
wl-paste --watch cliphist store &
hyprpaper &
# brightnessctl -d kbd_backlight s 50%
# fcitx5 &
# sh ~/.config/eww/wifiscanner.sh &
eww open bar &
eww update vol=$(pamixer --get-volume)
# eww open wifipopup
#eww open notis &
vesktop &
spotify &
sleep 1
hyprctl dispatch movetoworkspacesilent 5,Spotify &
# sh ~/.config/hypr/lockscreen &
