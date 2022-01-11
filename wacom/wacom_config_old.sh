#!/usr/bin/env bash

WACOM_CONNECTED=$(xsetwacom list devices | grep "Wacom One by Wacom S Pen")
if [[ ! -z "$WACOM_CONNECTED" ]]; then 
    xsetwacom set  "Wacom One by Wacom S Pen stylus" rotate half
    xsetwacom set "Wacom One by Wacom S Pen stylus" area  0 0 26610 9500
fi
