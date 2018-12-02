#!/bin/bash
set -e



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