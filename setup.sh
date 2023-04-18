#!/bin/bash

mkdir baks

mkdir downloads

sudo pacman -Syu

sudo pacman -S reflector

sudo cp /etc/pacman.d/mirrorlist baks/mirrorlist.bak

sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Sy

sudo pacman -S bluez blueman bluez-utils

sudo modprobe btusb

sudo systemctl enable bluetooth

sudo systemctl start bluetooth

sudo pacman -S p7zip unrar tar rsync git neofetch htop exfat-utils fuse-exfat ntfs-3g flac jasper aria2 curl wget

sudo pacman -S jdk-openjdk npm git

sudo pacman -S intel-ucode

sudo grub-mkconfig -o /boot/grub/grub.cfg

git clone https://aur.archlinux.org/yay.git downloads/yay

cd downloads/yay

makepkg -si

cd ../..

yay -S visual-studio-code-bin

yay -S google-chrome

sudo pacman -S flatpak

sudo pacman -S firefox libreoffice-fresh vlc

sudo pacman -S linux-lts linux-lts-headers

yay -S preload

sudo systemctl enable preload

sudo systemctl start preload

sudo pacman -S ttf-ubuntu-font-family ttf-fira-code ttf-fira-mono papirus-icon-theme

yay -S gnome-browser-connector

sudo pacman -S terminator

cd downloads

curl -O https://blackarch.org/strap.sh

chmod 700 strap.sh

sudo ./strap.sh

cd ..

sudo pacman -Sy

sudo cp confs/pacman.conf /etc/pacman.conf

cp confs/config ~/.config/terminator/config

echo "[+[+[Done]+]+]"

echo "Type: sudo pacman -Sy"
