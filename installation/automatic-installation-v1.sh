#!/bin/bash

sh 100-install-dependencies-v1.sh

sh 110-install-xcb-util-xrm-v1.sh

sh 120-install-i3-gaps-next-v1.sh

sh 130-install-polybar-v1.sh

sh 300-install-extra-software-v1.sh

sh 400-install-fonts-v1.sh

sh 410-install-icons-v1.sh

sh 420-install-themes-v1.sh

sh 430-install-applications-v1.sh

sh 600-copy-personal-settings.sh

sh 900-copy-config-files-v1.sh

echo "###################################################"
echo "##############     Auto script terminated     #################"
echo "###################################################"
