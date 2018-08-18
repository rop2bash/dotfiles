#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "##################################################"
echo "Latest possible version of polybar"
echo "##################################################"

sudo apt install -y python-dev python-pip libffi-dev build-essential virtualenvwrapper

pip install virtualfish

cp ../.config/fish ~/.config/


echo "##################################################"
echo "Latest possible version of capstone"
echo "##################################################"

rm -rf /tmp/aquynh

git clone https://github.com/aquynh/capstone /tmp/aquynh
cd /tmp/aquynh

# compile & install
./make.sh
sudo ./make.sh install

rm -rf /tmp/aquynh
