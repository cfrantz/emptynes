#!/bin/bash
sudo mount /dev/sdh1 /mnt
sudo cp $1 /mnt/test
sudo umount /mnt
sudo sync
