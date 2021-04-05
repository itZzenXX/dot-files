# urxvt daemon
urxvtd -q -o -f &

# dwm status
while true; do
	xsetroot -name " BTRY = $(cat /sys/class/power_supply/BAT0/capacity)% [$(cat /sys/class/power_supply/BAT0/status)] | RAM = $(free -h | awk '/^Mem:/ {print $3 "/" $2}') | VOL = $(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')% [$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)\].*/\1/')] | TIME =$(date +"%l:%M%p"| sed 's/  / /g')"
	sleep .1
done &

# wallpaper
feh --bg-fill /home/zen/Pictures/Wallpapers/kanna2.png &

# hides mouse
unclutter -idle 3 &

# urxvt
xrdb ~/.Xresources &

# dwm
exec dwm > ~/.dwm.log
