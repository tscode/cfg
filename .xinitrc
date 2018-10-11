
# Load .xresoucres
xrdb -merge ~/.xresources

# Set neo layout
setxkbmap de neo
# Fix for neo level5 lock: go to /usr/share/X11/xkb/symbols/de, find neo entry, and remove "lock" words from level5 includes

# Set cursor on root window
xsetroot -cursor_name left_ptr

# Set background image
# feh --bg-fil ...

# Run sxhkd for keybindings
sxhkd &

exec bspwm -c ~/.config/bspwm/bspwmrc
