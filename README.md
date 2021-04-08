# i3cfg

## How to clone

### Create alias
`alias i3cfg='/usr/bin/git --git-dir=$HOME/.config/i3/.cfg/ --work-tree=$HOME/.config/i3/'`

### Ignore source directory
`echo ".cfg" >> $HOME/.config/i3/.gitignore`

### Clone into bare repo
`git clone --bare https://github.com/ssdean/.cfg.git $HOME/.config/i3/.cfg`

### Checkout files
`i3cfg checkout`

### Load submodules
`i3cfg submodule update --init`

### Don't show untracked files
`i3cfg config --local status.showUntrackedFiles no`
