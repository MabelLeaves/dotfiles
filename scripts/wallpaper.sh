#! /usr/bin/env bash

# Script to choose a random wallpaper from images in a directory
# Uses the AWWW wallpaper daemon
# Assumes the directory is called "Wallpapers"
# Always chooses a new wallpaper when run, never the same one twice in a row

directory="/home/mabel/Pictures/Wallpapers/" # Where the wallpapers are located

# Get the currently set wallpaper
current_wallpaper=$(awww query)
current_wallpaper=${current_wallpaper#*Wallpapers/*}
echo -e "\nThe current wallpaper is:\t\x1b[32m$current_wallpaper\x1b[0m"

# Choose a new wallpaper
new_wallpaper=$(ls $directory | grep -v $current_wallpaper | sort -R | tail -1)
echo -e "The new wallpaper is:\t\t\x1b[32m$new_wallpaper\x1b[0m\n"

# Set the new wallpaper
awww img -t random $directory$new_wallpaper
