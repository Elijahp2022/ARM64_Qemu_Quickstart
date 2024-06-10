#!/bin/bash
sudo apt install qemu-system-arm
wget https://cdimage.ubuntu.com/releases/24.04/release/ubuntu-24.04-preinstalled-server-arm64+raspi.img.xz
xz -d ubuntu-24.04-preinstalled-server-arm64+raspi.img.xz
bash launch.sh
