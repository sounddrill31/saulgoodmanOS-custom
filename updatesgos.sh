#!/bin/bash

sudo apt update
sudo apt install -y neofetch
neofetch

echo "Testing Over, Do you want to continue modifying your ubuntu unity into Saul Goodman OS? You can run this in cubic(WIP) or on Bare Metal."
echo "Disclaimer, This will remove snaps and snap packages, since I hate snaps."

while true; do

read -p "Do you want to proceed? (y/n) " yn

case $yn in 
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac

done

echo doing stuff...
neofetch
