#!/bin/bash
mkdir ~/.screen && chmod 700 ~/.screen
export SCREENDIR=$HOME/.screen
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h:\[\033[01;32m\]\w\[\033[01;32m\]\$\[\033[00;37m\]'
/usr/bin/ttyd -p $PORT -c admin:adminks123 bash
