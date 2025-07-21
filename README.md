# dotfiles

# Setup
For use with a fresh Arch install - MUST USE PULSEAUDIO. ncspot doesn't work with pipewire.

# update system and install git
```
sudo pacman -Syu
sudo pacman -S git
```
# download dotfiles and wallpapers
```
git clone https://github.com/GopherSolutions/wallpaper
git clone https://github.com/GopherSolutions/dotfiles
```
# install basic programs
```
sudo pacman -S rofi ncspot powertop gimp nvim ffmpeg nsxiv waybar imagemagick python3 python-pip hyprpaper fastfetch qt5ct qt6ct kvantum breeze-icons brightnessctl nwg-look ttf-font-awesome ttf-jetbrains-mono-nerd otf-jost virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq iptables-nft bpytop darkroom krita
```
# remove redundant auto-installed menu
```
sudo pacman -R wofi
```
# install icloud-notes
```
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /ver/lib/snapd/snap /snap
sudo systemctl start snapd.service
sudo snap install icloud-notes
```
# install yay
```
git clone [https://aur.archlinux.org/yay.git](https://aur.archlinux.org/yay.git)
cd yay
makepkg -si
```
# install yay-only packages
```
yay -S thorium-browser-bin bibata-cursor-theme procps waypaper python-pywal16 auto-cpufreq
```
# configure vm stuff
```
sudo nvim /etc/libvirt/libvirtd.conf
	# UNCOMMENT unix_sock_group & unix_sock_rw_perms lines
sudo nvim /etc/libvirt/qemu.conf
	# Add user and group to valid users (search "user =")
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER
```

