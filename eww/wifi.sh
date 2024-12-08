iwctl station wlan0 show | awk '/Connected network/ {print $3}'
nmcli d monitor wlan0 | while read -r line
do
    if echo "$line" | grep -q "connected"; then # matches both connected and disconnected with one go :O
        eww update wififade=false
        sleep 0.4
        nmcli d status | awk '/^wlan0/ {print $4}'
        eww update wififade=true
    fi
done
