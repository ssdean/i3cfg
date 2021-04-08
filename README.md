# i3cfg

## How to clone

### Create alias
`alias i3cfg='/usr/bin/git --git-dir=$HOME/.config/i3/.cfg/ --work-tree=$HOME/.config/i3/'`

### Ignore source directory
`echo ".cfg" >> $HOME/.config/i3/.gitignore`

### Clone into bare repo
`git clone --bare https://github.com/ssdean/i3cfg.git $HOME/.config/i3/.cfg`

### Checkout files
`i3cfg checkout`

### Load submodules
`i3cfg submodule update --init`

### Don't show untracked files
`i3cfg config --local status.showUntrackedFiles no`

## Setup

### Touchpad

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

### Packages

List of required and useful packages

- acpi                    Client for battery, power, and thermal readings
- alsa-utils              An alternative implementation of Linux sound support
- blueman                 GTK+ Bluetooth Manager
- bluez-tools             A set of tools to manage Bluetooth devices for Linux
- bluez-utils             Development and debugging utilities for the bluetooth protocol stack
- cifs-utils              CIFS filesystem user-space tools
- cronie                  Daemon that runs specified programs at scheduled times and related tools
- dmenu                   Fast and lightweight dynamic menu for X
- feh                     Fast and light imlib2-based image viewer (Need for desktop background)
- gnome-desktop           Library with common API for various GNOME modules
- iptables                Linux kernel packet control tool
- libnautilus-extension   Library for extending the Default file manager for GNOME
- lxappearance            Feature-rich GTK+ theme switcher of the LXDE Desktop
- maim                    Utility to take a screenshot using imlib2
- nautilus                Default file manager for GNOME
- network-manager-applet  Applet for managing network connections
- networkmanager          Network connection manager and user applications
- openssh                 Premier connectivity tool for remote login with the SSH protocol
- picom                   X compositor that may fix tearing issues (Replaces Compton. Needed for transparency)
- polkit-gnome            Legacy polkit authentication agent for GNOME
- pulseaudio              A featureful, general-purpose sound server
- pulseaudio-alsa         ALSA Configuration for PulseAudio
- pulseaudio-bluetooth    Bluetooth support for PulseAudio
- ranger                  Simple, vim-like file manager
- rsync                   A file transfer program to keep remote files in sync
- termite                 Terminal emulator
- ttf-font-awesome        Iconic font designed for Bootstrap
- ttf-inconsolata         Monospace font for pretty code listings and for the terminal
- tlp                     Linux Advanced Power Management
- vim                     Vi Improved, a highly configurable, improved version of the vi text editor
- xf86-input-libinput     Generic input driver for the X.Org server based on libinput
- xorg-xinit              X.Org initialisation program
- zsh                     A very advanced and programmable command interpreter (shell) for UNIX
