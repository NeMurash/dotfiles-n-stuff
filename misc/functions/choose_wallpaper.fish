set bg $(ls -1 ~/.local/share/wallpapers | rofi -dmenu)

printf "wallpaper {
  monitor = *
  path = ~/.local/share/wallpapers/$bg
}
splash = false" > ~/.config/hypr/hyprpaper.conf

pkill hyprpaper
hyprpaper &
