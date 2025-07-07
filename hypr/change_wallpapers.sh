#!/bin/bash

WALLPAPER_DIRECTORY=~/wallpaper

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"

hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"

hyprctl hyprpaper wallpaper "DP-7,$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused
