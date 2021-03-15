#!/bin/bash
url=$1
aria2c -s10 -x10 -j10 --check-certificate=false ${url}

# aria2c --conf-path=/home/.aria2c/aria2.conf --check-certificate=false -x4 ${url}
