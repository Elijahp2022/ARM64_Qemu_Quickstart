#!/bin/bash
qemu-system-aarch64 \
-M virt \
-m 4G \
-smp 4 \
-cpu cortex-a53 \
-kernel vmlinuz \
-initrd initrd.img \
-drive file=ubuntu-24.04-preinstalled-server-arm64+raspi.img,format=raw,if=none,id=drive0,cache=writeback \
-device virtio-blk,drive=drive0,bootindex=0 \
-netdev user,id=net0,hostfwd=tcp::2222-:22 \
-device virtio-net-device,netdev=net0 \
-append 'root=/dev/vda2 noresume rw' \
-no-reboot \
-nographic
