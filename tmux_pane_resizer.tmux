#!/user/bin/env bash

bind-key C-a switch-client -T RESIZE

# Resize panes
bind-key -T RESIZE h resize-pane -L 2 \; switch-client -T RESIZE h
bind-key -T RESIZE l resize-pane -R 2 \; switch-client -T RESIZE l
bind-key -T RESIZE k resize-pane -U 2 \; switch-client -T RESIZE k
bind-key -T RESIZE j resize-pane -D 2 \; switch-client -T RESIZE j
bind-key -T RESIZE H resize-pane -L 5 \; switch-client -T RESIZE H
bind-key -T RESIZE L resize-pane -R 5 \; switch-client -T RESIZE L
bind-key -T RESIZE K resize-pane -U 5 \; switch-client -T RESIZE K
bind-key -T RESIZE J resize-pane -D 5 \; switch-client -T RESIZE J
bind-key -T RESIZE s switch-client -T SWAP
bind-key -T RESIZE m switch-client -T MOVE
bind-key -T RESIZE f switch-client -T FOCUS
bind-key -T RESIZE r switch-client -T RESIZE

# Swap panes
bind-key -T SWAP j swap-pane -s '{down-of}' \; switch-client -T SWAP
bind-key -T SWAP h swap-pane -s '{left}' \; switch-client -T SWAP
bind-key -T SWAP l swap-pane -s '{right}' \; switch-client -T SWAP
bind-key -T SWAP k swap-pane -s '{up-of}' \; switch-client -T SWAP
bind-key -T SWAP space next-layout \; switch-client -T SWAP
bind-key -T SWAP s switch-client -T SWAP
bind-key -T SWAP m switch-client -T MOVE
bind-key -T SWAP f switch-client -T FOCUS
bind-key -T SWAP r switch-client -T RESIZE

# Move panes
bind-key -T MOVE l move-pane -t '{right-of}' \; switch-client -T MOVE
bind-key -T MOVE h move-pane -t '{left-of}'\; switch-client -T MOVE
bind-key -T MOVE j move-pane -t '{down-of}'\; switch-client -T MOVE
bind-key -T MOVE k move-pane -t '{up-of}' \; switch-client -T MOVE
bind-key -T MOVE space next-layout
bind-key -T MOVE s switch-client -T SWAP
bind-key -T MOVE m switch-client -T MOVE
bind-key -T MOVE f switch-client -T FOCUS
bind-key -T MOVE r switch-client -T RESIZE

# Focus panes
# This isn't super useful for changing focus since there are too many keys to
# press. It's only useful if you are in e.g. resize mode and want to resize
# another pane or move another pane, then it's useful to press f, go to that
# pane, and then resize/move it.
bind-key -T FOCUS h select-pane -L \; switch-client -T FOCUS
bind-key -T FOCUS l select-pane -R \; switch-client -T FOCUS
bind-key -T FOCUS j select-pane -D \; switch-client -T FOCUS
bind-key -T FOCUS k select-pane -U \; switch-client -T FOCUS
bind-key -T FOCUS s switch-client -T SWAP
bind-key -T FOCUS m switch-client -T MOVE
bind-key -T FOCUS f switch-client -T FOCUS
bind-key -T FOCUS r switch-client -T RESIZE
