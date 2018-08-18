#!/bin/bash 
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "##################################################"
echo "Latest possible version of polybar"
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

# installing polybar

rm -rf /tmp/jaagr

git clone --branch 3.2 --recursive https://github.com/jaagr/polybar /tmp/jaagr
cd /tmp/jaagr

# compile & install
mkdir -p build && cd build/
cmake .. && sudo make install

rm -rf /tmp/jaagr

echo "You installed the following version"
echo
echo
polybar --version
echo
echo
echo "##################################################"
echo "Latest possible version of polybar installed"
echo "##################################################"
sleep 1
