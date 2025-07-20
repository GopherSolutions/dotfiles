#!/bin/bash

cp -r ~/.config/rofi ~/dotfiles/
cp -r ~/.config/kitty ~/dotfiles/
cp -r ~/.config/hypr ~/dotfiles/
cp -r ~/.config/scripts ~/dotfiles/
cp -r ~/.config/waybar ~/dotfiles/
cp -r ~/.config/waypaper ~/dotfiles/
cp -r ~/.config/wal ~/dotfiles/

cd ~/dotfiles
git add .
git commit -m "updated"
git push -u origin main
