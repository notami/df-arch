#!/bin/sh

s1=$(pacman -Q linux | sed 's/linux //')
s2=$(uname -r | sed 's/-ARCH//')

if [ "$s1" == "$s2" ]; then
    echo OK
  else
      echo REBOOT BITCH
  fi
