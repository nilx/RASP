#! /bin/sh

RAWGHMASTER=raw.githubusercontent.com/nilx/RASP/master

wget https://$RAWGHMASTER/boot/installer-config.txt -O installer-config.txt
wget https://$RAWGHMASTER/boot/post-install.txt -O post-install.txt
