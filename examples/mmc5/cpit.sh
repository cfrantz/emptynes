#!/bin/bash

CARD=${CARD:-/dev/sdg1}

sudo mount ${CARD} /mnt/sdcard
sudo cp "$@" /mnt/sdcard/test
sudo umount /mnt/sdcard
sudo sync
