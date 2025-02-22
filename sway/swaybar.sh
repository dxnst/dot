#!/bin/dash

# This function makes your bar laggy
#weather() {
#    echo -n "$(curl https://wttr.in/Paris?format=3)"
#}

artist() {
    echo -n "󰎆 $(cmus-remote -Q | grep ' artist ' | cut -d ' ' -f3-)"
}

song() {
    echo -n "$(cmus-remote -Q | grep title | cut -d ' ' -f3-)"
}

batt() {
  case "$(cat /sys/class/power_supply/macsmc-battery/status 2>/dev/null)" in
    Discharging) echo -n "󰂁 " ;;
    Charging) echo -n "󰂄 " ;;
    "Not charging") echo -n "󱟢 " ;;
  esac
  echo -n "$(cat /sys/class/power_supply/macsmc-battery/capacity)%"
}

clock() {
  echo -n "󰥔 $(date '+%d/%m %H:%M')"
}

wlan() {
  case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
  up) echo -n " " ;;
  down) echo -n "󰖪 " ;;
  esac
}

#vol() {
#    echo -n "  $(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)%"
#}

while true; do
	    echo "$(artist) - $(song) $(wlan) $(batt) $(clock)"
	sleep 1
done
