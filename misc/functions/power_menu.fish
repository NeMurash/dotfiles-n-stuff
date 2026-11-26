set options "Shutdown\nReboot"
set option $(echo -e $options | rofi -dmenu -i -p "Execute")

echo $option

switch $option
  case "Shutdown"
    shutdown now
  case "Reboot"
    reboot
end
