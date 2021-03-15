#!/bin/bash
mkdir ~/.screen && chmod 700 ~/.screen
export SCREENDIR=$HOME/.screen
/usr/bin/ttyd -p $PORT -c $USER:$PASS bash
