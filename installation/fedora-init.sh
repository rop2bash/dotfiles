#!/bin/bash
set -e

echo "#########################################"
echo "Init and add repos"
echo "#########################################"

sudo dnf install -y python
sudo dnf install -y copr-cli
sudo dnf install -y gcc gcc-c++
sudo dnf install -y perl-open

echo "#########################################"
sleep 1

echo "#########################################"
echo "i3 with gaps"
echo "#########################################"

sudo dnf -y copr enable gregw/i3desktop
sudo dnf install -y i3-gaps

sudo dnf install -y autoconf
sudo dnf install -y automake


sudo dnf install -y rxvt-unicode

# installing polybar
sudo dnf install -y cmake @development-tools gcc-c++ xorg-x11-util-macros
sudo dnf install -y cairo-devel xcb-proto xcb-util-devel xcb-util-wm-devel xcb-util-image-devel
sudo dnf install -y xcb-util-cursor-devel alsa-lib-devel pulseaudio-libs-devel i3-ipc jsoncpp-devel libmpdclient-devel libcurl-devel wireless-tools-devel libnl3-devel

rm -rf /tmp/xcb-util-xrm
git clone --recursive http://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
cd /tmp/xcb-util-xrm
git submodule update --init
sh /tmp/xcb-util-xrm/autogen.sh --prefix=/usr
make && sudo make install
rm -rf /tmp/xcb-util-xrm
cd

sudo mount -o remount,size=8G,noatime /tmp
rm -rf /tmp/jaagr
git clone --recursive https://github.com/jaagr/polybar /tmp/jaagr
cd /tmp/jaagr
mkdir -p build && cd build/
cmake .. && sudo make install
rm -rf /tmp/jaagr
cd

echo "##################################################"
sleep 1

echo "#########################################################"
echo "General software"
echo "#########################################################"
sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager -y --set-enabled google-chrome
sudo dnf install -y google-chrome
sudo dnf install -y gimp
sudo dnf install -y ipython
sudo dnf install -y ipython3
sudo dnf install -y geany
sudo dnf install -y fish
sudo dnf install -y nano

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y vlc
sudo dnf install -y python-vlc

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager -y --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

echo "#########################################################"
echo "Everything to work comfortably in i3 will be installed"
echo "#########################################################"

# core applications
sudo dnf install -y wicd
#sudo dnf install -y i3-wm
sudo dnf install -y dmenu

#j4-dmenu-desktop
rm -rf /tmp/enkore
git clone https://github.com/enkore/j4-dmenu-desktop /tmp/enkore
cd /tmp/enkore
mkdir -p build && cd build/
cmake ..
make
sudo make install
rm -rf /tmp/enkore
cd

# change wallpapers with feh and variety
sudo dnf install -y feh

# take picture of screen
sudo dnf install -y scrot

# compton
sudo dnf install -y compton

# rofi
sudo dnf install -y rofi

sudo dnf install -y i3lock
sudo dnf install -y libinput-devel
sudo dnf install -y light
sudo dnf install -y neofetch

sudo dnf config-manager -y --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install -y spotify

sudo dnf install -y redshift

sudo pip3 install pywal
sudo pip install virtualfish

echo
echo
echo "#########################################################"
echo "Everything to work comfortably in i3 has been installed"
echo "#########################################################"
sleep 1

echo "##################################################"
echo "Initial Setup Finished"
echo "Please reboot and coninue"
echo "##################################################"