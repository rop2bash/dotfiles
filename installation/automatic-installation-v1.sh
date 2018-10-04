#!/bin/bash

sh 400-install-fonts-v1.sh

sh 410-install-icons-v1.sh

sh 420-install-themes-v1.sh

sh 430-install-applications-v1.sh

sh 600-copy-personal-settings.sh

sh 900-copy-config-files-v1.sh

echo "###################################################"
echo "##############     Auto script terminated     #################"
echo "###################################################"
