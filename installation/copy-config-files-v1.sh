#!/bin/bash
set -e

rm -rf ~/.config/i3
rm -rf ~/.config/polybar
rm -rf ~/.config/fish
rm -rf ~/.urxvt

cp -rf ../.config/i3 ~/.config/
cp -rf ../.config/polybar ~/.config/
cp -rf ../.config/fish/ ~/.config/
cp -rf ../.config/compton.conf ~/.config/
cp -rf ../.urxvt ~/
cp -rf ../.Xresources ~/

echo "################################################################"
echo "##############  LOG OFF AND LOG ON WITH I3     #################"
echo "################################################################"
