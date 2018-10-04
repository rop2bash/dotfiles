#!/bin/bash
set -e

echo "#########################################"
echo "Init and add repos"
echo "#########################################"

sudo apt install -y python
sudo apt install -y xinit

sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo apt update -y
sudo apt upgrade -y

echo "#########################################"
sleep 1

echo "#########################################"
echo "dependencies for i3 with gaps"
echo "#########################################"


# script 110
sudo apt-get install -y autoconf
sudo apt-get install -y automake
sudo apt-get install -y build-essential
sudo apt-get install -y libtool
sudo apt-get install -y xutils-dev xcb libxcb-composite0-dev
sudo apt-get install -y doxygen

#script 120
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev 
sudo apt-get install -y libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev


echo
echo
echo "#########################################"
sleep 1

echo "###############################"
echo "Xcb-util-xrm"
echo "###############################"

# dependancy on xcb-util-xrm

rm -rf /tmp/xcb-util-xrm
git clone --recursive https://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
cd /tmp/xcb-util-xrm
git submodule update --init
sh /tmp/xcb-util-xrm/autogen.sh --prefix=/usr
make && sudo make install

rm -rf /tmp/xcb-util-xrm
cd

echo
echo
echo "###############################"
sleep 1

echo "##################################################"
echo "Latest possible version of i3 with gaps"
echo "##################################################"

# installing i3 gap

rm -rf /tmp/Airblader

git clone https://github.com/Airblader/i3.git /tmp/Airblader
cd /tmp/Airblader

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers

make && sudo make install

rm -rf /tmp/Airblader
cd

echo "You installed the following version"
echo
echo
i3 --version
echo
echo
echo "##################################################"
sleep 1

echo "##################################################"
echo "Installing latest possible version of polybar"
echo "##################################################"

sudo apt install -y cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

sudo apt install -y libxcb-xkb-dev

sudo apt install -y libxcb-xrm-dev

sudo apt install -y libxcb-cursor-dev

sudo apt install -y libasound2-dev

sudo apt install -y libpulse-dev

sudo apt install -y libjsoncpp-dev

sudo apt install -y libmpdclient-dev

sudo apt install -y libcurl4-openssl-dev

sudo apt install -y libiw-dev libnl-3-dev

sudo apt install -y rxvt-unicode
# installing polybar

rm -rf /tmp/jaagr

git clone --branch 3.2 --recursive https://github.com/jaagr/polybar /tmp/jaagr
cd /tmp/jaagr

# compile & install
mkdir -p build && cd build/
cmake .. && sudo make install

rm -rf /tmp/jaagr
cd

echo "##################################################"
sleep 1

echo "#########################################################"
echo "General software"
echo "#########################################################"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update -y

sudo apt install -y chromium-browser
sudo apt install -y chrome-stable
sudo apt install -y gimp 
sudo apt install -y inkscape 
sudo apt install -y meld 
sudo apt install -y vlc 
sudo apt install -y evolution
sudo apt install -y python3-pip
sudo apt install -y ipython



echo "#########################################################"
echo "Everything to work comfortably in i3 will be installed"
echo "#########################################################"

# core applications
sudo apt-get install -y i3status i3lock xss-lock
sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo apt install -y wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus

#sudo apt-get install -y i3-wm
sudo apt-get install -y dmenu

# conky
sudo apt-get install -y conky-all

# geany
sudo apt-get install -y geany

# numerick lock on
sudo apt-get install -y numlockx
numlockx on

# change wallpapers with feh and variety
sudo apt-get install -y feh

# change icons,themes and mouse
#sudo apt-get install -y lxappearance qt4-qtconfig

# take picture of screen
sudo apt-get install -y scrot

# notify demon
sudo apt-get install -y notify-osd

# compton
sudo apt-get install -y compton

# get the mouse out of the way
sudo apt-get install -y unclutter

# to know what system you are on normally installed
sudo apt-get install -y lsb-release

# panel icon for sound
# sudo apt-get install -y volti
sudo apt-get install  -y pasystray paman paprefs pavumeter pulseaudio-module-zeroconf

# different terminal for nemo
sudo apt-get install -y gnome-terminal

# Cursor theme
#sudo apt-get install -y breeze-cursor-theme

# gmrun
sudo apt-get install -y gmrun

# rofi
sudo apt-get install -y rofi

# screenshooters
sudo apt-get install -y gnome-screenshot


# playerctl for music
#https://github.com/acrisci/playerctl/releases
    if hash playerctl 2>/dev/null; then
    	echo "playerctl already installed"
    else
        wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb -O /tmp/playerctl
		sudo dpkg -i /tmp/playerctl
    fi

# wal
sudo apt install -y imagemagick
rm -rf /tmp/dylanaraps

git clone https://github.com/dylanaraps/pywal /tmp/dylanaraps
cd /tmp/dylanaraps

pip3 install .

rm -rf /tmp/dylanaraps
cd

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