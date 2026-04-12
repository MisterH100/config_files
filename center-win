#!/bin/bash
WIN_W=1350
WIN_H=690

SCREEN_W=$(xdpyinfo | grep dimensions | awk '{print $2}' | cut -dx -f1)
SCREEN_H=$(xdpyinfo | grep dimensions | awk '{print $2}' | cut -dx -f2)

X=$(( (SCREEN_W - WIN_W) / 2 ))
Y=$(( (SCREEN_H - WIN_H) / 2 ))

# Watch for new windows and resize/center them
xprop -root -spy _NET_ACTIVE_WINDOW | while read -r line; do
  sleep 0.3  # give the window time to open
  wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
  wmctrl -r :ACTIVE: -e 0,$X,$Y,$WIN_W,$WIN_H
done
