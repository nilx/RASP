#! /bin/sh

RAWGHMASTER=raw.githubusercontent.com/nilx/RASP/master

wget https://$RAWGHMASTER/boot/installer-config.txt -o installer-config.txt
wget https://$RAWGHMASTER/boot/post-install.txt -o post-install.txt
