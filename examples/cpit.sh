#!/bin/bash
sudo mount /dev/sdb1 /mnt
sudo cp $1 /mnt/test
sudo umount /mnt
sudo sync
