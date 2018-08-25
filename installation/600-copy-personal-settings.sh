#!/bin/bash
set -e

echo "Creating all folders IF they do not exist already"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
[ -d $HOME"/.config/fish" ] || mkdir -p $HOME"/.config/fish"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
[ -d $HOME"/Apps" ] || mkdir -p $HOME"/Apps"
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
[ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
[ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"


echo "Change the settings later with lxappearance and qtconfig-qt4"

cp settings/.gtkrc-2.0 ~/
cp settings/bookmarks ~/.config/gtk-3.0/
cp settings/settings.ini ~/.config/gtk-3.0/
cp .config/compton.conf ~/.config/

echo "Copy/pasting gimp scripts and themes"

cp settings/gimp/scripts/* ~/.gimp-2.8/scripts/
cp -r settings/gimp/themes/* ~/.gimp-2.8/themes/

# wal
sudo apt install -y imagemagick
rm -rf /tmp/dylanaraps

git clone https://github.com/dylanaraps/pywal /tmp/dylanaraps
cd /tmp/dylanaraps

pip3 install .

rm -rf /tmp/dylanaraps

echo "################################################################"
echo "#########       personal settings installed     ################"
echo "################################################################"
