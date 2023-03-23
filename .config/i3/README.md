# i3cfg

## How to clone

### Create alias
`alias i3cfg='/usr/bin/git --git-dir=$HOME/.config/i3/.i3cfg/ --work-tree=$HOME/.config/i3/'`

### Navigate to config directory

`cd .config/i3` Create if this does not exist.

### Clone into bare repo
`git clone --bare https://github.com/ssdean/i3cfg.git $HOME/.config/i3/.i3cfg`

### Ignore source directory
`echo ".i3cfg" >> $HOME/.config/i3/.gitignore`

### Checkout files
`i3cfg checkout`

### Don't show untracked files
`i3cfg config --local status.showUntrackedFiles no`

## Touchpad

Enable tap to click and natural scrolling

```
echo '
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Option "NaturalScrolling" "true"
    Option "Tapping" "on"
    Driver "libinput"
EndSection' >> /usr/share/X11/xorg.conf.d/40-libinput.conf
```

## Packages

### Required by config

Package | Description
--- | ---
acpi                   | Client for battery, power, and thermal readings
alacritty              | A cross-platform, GPU-accelerated terminal emulator
alsa-utils             | An alternative implementation of Linux sound support
dmenu                  | Fast and lightweight dynamic menu for X
feh                    | Fast and light imlib2-based image viewer (Need for desktop background)
maim                   | Utility to take a screenshot using imlib2
network-manager-applet | Applet for managing network connections
networkmanager         | Network connection manager and user applications
picom                  | X compositor that may fix tearing issues (Replaces Compton. Needed for transparency)
polkit-gnome           | Legacy polkit authentication agent for GNOME
pulseaudio-alsa        | ALSA Configuration for PulseAudio
ranger                 | Simple, vim-like file manager
ttf-font-awesome       | Iconic font designed for Bootstrap
ttf-inconsolata        | Monospace font for pretty code listings and for the terminal

### Bluetooth
Package | Description
--- | ---
blueman                | GTK+ Bluetooth Manager
bluez                  | Daemons for the bluetooth protocol stack
bluez-utils            | Development and debugging utilities for the bluetooth protocol stack
pulseaudio-bluetooth   | Bluetooth support for PulseAudio

### Other recommendations

Package | Description
--- | ---
cifs-utils             | CIFS filesystem user-space tools
cronie                 | Daemon that runs specified programs at scheduled times and related tools
gnome-desktop          | Library with common API for various GNOME modules
libnautilus-extension  | Library for extending the Default file manager for GNOME
lxappearance           | Feature-rich GTK+ theme switcher of the LXDE Desktop
nautilus               | Default file manager for GNOME
openssh                | Premier connectivity tool for remote login with the SSH protocol
rsync                  | A file transfer program to keep remote files in sync
tlp                    | Linux Advanced Power Management
xf86-input-libinput    | Generic input driver for the X.Org server based on libinput
xorg-xbacklight        | RandR-based backlight control application, with brightness represented as an integer
xorg-xinit             | X.Org initialisation program
