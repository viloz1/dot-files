exec swayidle -w \
    timeout 120 'swaylock -f -c 000000' \
    timeout 240 'swaymsg "output * dpms off"' \
       resume 'swaymsg "output * dpms on"' \
    before-sleep 'swaylock -f -c 000000'
