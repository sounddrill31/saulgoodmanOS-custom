#!/bin/bash

sudo apt update
sudo apt install -y neofetch
neofetch

echo "Testing Over, Do you want to continue modifying your ubuntu unity into Saul Goodman OS?"

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
