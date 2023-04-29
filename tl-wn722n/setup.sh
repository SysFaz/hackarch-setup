#!/bin/bash

sudo pacman -S bc linux-headers dkms

sudo rmmod r8188eu.ko

unzip rtl8188eus.zip -d .

cd rtl8188eus

sudo -i

echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"

exit

sudo make

sudo make install

sudo modprobe 8188eu

sudo reboot
