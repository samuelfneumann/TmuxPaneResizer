#!/uzer/bin/env bash

bind-key C-a switch-client -T RESIZE

# Resize panes
bind-key -rT RESIZE h resize-pane -L 2
bind-key -rT RESIZE l resize-pane -R 2
bind-key -rT RESIZE k resize-pane -U 2
bind-key -rT RESIZE j resize-pane -D 2
bind-key -rT RESIZE H resize-pane -L 5
bind-key -rT RESIZE L resize-pane -R 5
bind-key -rT RESIZE K resize-pane -U 5
bind-key -rT RESIZE J resize-pane -D 5
bind-key -rT RESIZE s switch-client -T SWAP
bind-key -rT RESIZE m switch-client -T MOVE
bind-key -rT RESIZE f switch-client -T FOCUS
bind-key -rT RESIZE r switch-client -T RESIZE

# Swap panes
bind-key -rT SWAP h swap-pane -s '{left}'
bind-key -rT SWAP l swap-pane -s '{right}'
bind-key -rT SWAP j swap-pane -s '{down-of}'
bind-key -rT SWAP k swap-pane -s '{up-of}'
bind-key -rT SWAP space next-layout
bind-key -rT SWAP s switch-client -T SWAP
bind-key -rT SWAP m switch-client -T MOVE
bind-key -rT SWAP f switch-client -T FOCUS
bind-key -rT SWAP r switch-client -T RESIZE

# Move panes
bind-key -rT MOVE h move-pane -t '{left-of}'
bind-key -rT MOVE l move-pane -t '{right-of}'
bind-key -rT MOVE j move-pane -t '{down-of}'
bind-key -rT MOVE k move-pane -t '{up-of}'
bind-key -rT MOVE space next-layout
bind-key -rT MOVE s switch-client -T SWAP
bind-key -rT MOVE m switch-client -T MOVE
bind-key -rT MOVE f switch-client -T FOCUS
bind-key -rT MOVE r switch-client -T RESIZE

# Focus panes
# This isn't super useful for changing focus since there are too many keys to
# press. It's only useful if you are in e.g. resize mode and want to resize
# another pane or move another pane, then it's useful to press f, go to that
# pane, and then resize/move it.
bind-key -rT FOCUS h select-pane -L
bind-key -rT FOCUS l select-pane -R
bind-key -rT FOCUS j select-pane -D
bind-key -rT FOCUS k select-pane -U
bind-key -rT FOCUS s switch-client -T SWAP
bind-key -rT FOCUS m switch-client -T MOVE
bind-key -rT FOCUS f switch-client -T FOCUS
bind-key -rT FOCUS r switch-client -T RESIZE

