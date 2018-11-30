#!/bin/bash
set -e

mkdir ~/.config/i3
mkdir ~/.config/polybar
mkdir ~/.config/fish

cp -rf ../.config/i3 ~/.config/
cp -rf ../.config/polybar ~/.config/
cp -rf ../.config/fish/ ~/.config/
cp -rf ../.config/compton.conf ~/.config/
cp -rf ../.Xresources ~/

echo "################################################################"
echo "##############  LOG OFF AND LOG ON WITH I3     #################"
echo "################################################################"
