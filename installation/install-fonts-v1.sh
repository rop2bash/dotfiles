#!/bin/bash
set -e

rm -rf ~/.fonts
mkdir ~/.fonts

cp fonts/DejaVuSansMonoNerdFont.ttf ~/.fonts
cp fonts/RobotoMonoNerdFont.ttf ~/.fonts
fc-cache



echo "#########################################################"
echo "Fonts have been  installed"
echo "#########################################################"
sleep 1
