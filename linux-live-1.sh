#!/bin/bash
vg="linux"
partition="/dev/sda2"
sudo pvcreate $partition
sudo vgcreate $vg $partition
sudo lvcreate -L 40G -n root $vg
sudo lvcreate -L 30G -n programs $vg
sudo lvcreate -L 1G -n swap $vg
sudo lvcreate -l 80%FREE -n home $vg
