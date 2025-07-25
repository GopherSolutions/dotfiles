#!/bin/bash

# install basic programs
sudo pacman -S --noconfirm nvim rofi ncspot powertop gimp nvim ffmpeg nsxiv waybar imagemagick python3 python-pip hyprpaper fastfetch qt5ct qt6ct kvantum breeze-icons brightnessctl nwg-look ttf-font-awesome ttf-jetbrains-mono-nerd otf-jost virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq iptables-nft

# remove redundant auto-installed menu
sudo pacman -R --noconfirm wofi nano

# install icloud-notes
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /ver/lib/snapd/snap /snap
sudo systemctl start snapd.service
sudo snap install icloud-notes

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install yay-only packages
yay -S --noconfirm thorium-browser-bin bibata-cursor-theme procps waypaper python-pywal16 auto-cpufreq
