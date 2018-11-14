
# Load .xresoucres
xrdb -merge ~/.xresources

# Run compton compositor
compton -b --config .config/compton/compton.conf

# Set neo layout
setxkbmap de neo
# Fix for neo level5 lock: go to /usr/share/X11/xkb/symbols/de, find neo entry, and remove "lock" words from level5 includes

# For IMS office laptop dell latitude
# Set monitor with xrandr
xrandr --output DP1-1 --auto --right-of eDP1
# Activate scrolling with trackpoint
xinput set-prop 11 "libinput Scroll Method Enabled" 0 0 1
# Automatic screen locking
xautolock -time 10 -locker physlock &


# Set cursor on root window
xsetroot -cursor_name left_ptr

# Set background image
feh --bg-fil ~/Pictures/wallpapers/arch-simple.png

# Run sxhkd for keybindings
sxhkd &

# Run yabar
yabar &

exec bspwm -c ~/.config/bspwm/bspwmrc

