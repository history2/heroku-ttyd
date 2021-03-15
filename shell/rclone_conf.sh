#!/bin/bash
url=$1
wget -P /home/.config/rclone/ ${url}

# rclone -v -P --stats 5s --transfers=16 --drive-chunk-size=16384k --drive-upload-cutoff=16384k copy load_file test:
