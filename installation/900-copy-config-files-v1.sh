#!/bin/bash
set -e

##################################################################################################################
########################                        D I S T R O                             ##########################
##################################################################################################################

echo "################################################################"
echo "Checking presence of lsb-release and install it when missing"

	if ! location="$(type -p "lsb_release")" || [ -z "lsb_release" ]; then

		# check if apt-git is installed
		if which apt-get > /dev/null; then

			sudo apt-get install -y lsb-release

		fi

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm lsb-release

		fi

		# check if eopkg is installed
		if which eopkg > /dev/null; then

			sudo eopkg -y install lsb-release

		fi

	fi


DISTRO=$(lsb_release -si)

echo "################################################################"
echo "You are working on " $DISTRO

##################################################################################################################
###################### C H E C K I N G   E X I S T E N C E   O F   F O L D E R S            ######################
##################################################################################################################b

# define the github here, just last part

echo "################################################################"
echo "Check if there is a ~/.config/i3 folder else make one"

[ -d $HOME"/./config/i3" ] || mkdir -p $HOME"/.config/i3"




##################################################################################################################
######################              C L E A N I N G  U P  O L D  F I L E S                    ####################
##################################################################################################################

# removing all the old files that may be in .config/i3 with confirm deletion

if find ~/.config/i3 -mindepth 1 > /dev/null ; then

	read -p "Everything in folder ~/.config/i3 will be deleted. Are you sure? (y/n)?" choice
	case "$choice" in 
 	 y|Y ) rm -rf ~/.config/i3/* ;;
 	 n|N ) echo "Nothing has changed." & echo "Script ended!" & exit;;
 	 * ) echo "Type y or n." & echo "Script ended!" & exit;;
	esac

else
	echo "################################################################" 
	echo ".config/i3 folder is ready and empty. Files will now be copied."

fi

##################################################################################################################
######################              M O V I N G  I N  N E W  F I L E S                        ####################
##################################################################################################################


# copy all config files to this hidden folder

cp -rf ../.config/i3 ~/.config/
cp -rf ../.config/polybar ~/.config/
cp -rf ../.config/fish/ ~/.config/
cp -rf ../.Xresources ~/

echo "################################################################"
echo "##############  LOG OFF AND LOG ON WITH I3     #################"
echo "################################################################"
