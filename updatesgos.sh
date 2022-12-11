#!/bin/bash

sudo apt update
sudo apt install -y neofetch
neofetch

echo "Testing Over, Do you want to continue modifying your ubuntu unity into Saul Goodman OS?"

read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	y ) echo ok, we will proceed;;
	ok ) echo ok, we will proceed;;
	Y ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;

echo "doing stuff"

neofetch
