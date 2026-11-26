set sink $(pactl list sinks short | awk -F' ' '{print $2}' | rofi -dmenu)

pactl set-default-sink $sink
notify-send -a "Meow" "Set default sink to: $sink"
