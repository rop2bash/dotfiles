#!/bin/bash

#https://github.com/horst3180/arc-theme

rm -rf /tmp/arc-theme

sudo apt-get install build-essential autoconf automake pkg-config libgtk-3-0 libgtk-3-dev -y
sudo apt-get -f install
git clone https://github.com/horst3180/arc-theme --depth 1 /tmp/arc-theme
cd /tmp/arc-theme
sh autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/arc-theme

# sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}


echo "################################################################"
echo "###################    arc theme installed #####################"
echo "################################################################"
