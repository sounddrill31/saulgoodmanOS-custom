#!/bin/bash

sudo apt update
sudo apt install -y neofetch
neofetch


echo "Testing Over, Do you want to continue modifying your Raspbian/Raspberry Pi OS x86(Arm not officially supported, yet you can try.) into Saul Goodman OS? You can run this in cubic(WIP) or on Bare Metal."
echo "Disclaimer, This will remove snaps and snap packages, since I hate snaps."
echo "Hi. I'm Saul Goodman. Did you know that you have rights? The Constitution says you do. And so do I. I believe that until proven guilty, every man, woman, and child in this country is innocent. And that's why I fight for you, Albuquerque! Better call Saul. Saul Goodman, attorney."
echo "The GPL v3 LICENSE file applies! If you agree to it, proceed"
#wget -O gpl https://raw.githubusercontent.com/sounddrill31/saulgoodmanOS-custom/main/LICENSE 
#nano gpl
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
#Start
echo doing stuff...
neofetch
sudo apt purge snaps
#sudo apt-get install -y imagemagick
#sudo pip install youtube-dl
#sudo apt-get install -y vlc

#Wallpaper
echo Doing Wallpapers...
mkdir Saulpapers
cd Saulpapers
#wget -O saulpaperback.png https://i.kym-cdn.com/photos/images/newsfeed/001/893/464/3e7.jpg
#display -window root saulpaperback.png
wget -O saulpaperfront.png https://github.com/sounddrill31/saulgoodmanOS-custom/blob/main/Saulpapers/saulpaperfront.png?raw=true
sudo cp -v ~/Saulpapers/saulpaperfront.png /usr/share/lxde/wallpapers/
pcmanfm --set-wallpaper="/usr/share/lxde/wallpapers/saulpaperfront.png"
#
#display -window root saulpaperfront.png

#pcmanfm --set-wallpaper yourfile.jpg

#youtube-dl -f bestvideo+bestaudio/best --no-playlist https://www.youtube.com/watch?v=LyEqj8mC7iQ
#cvlc --video-wallpaper --no-audio "3D Saul Goodman, Extended to Full Song, 1080p Full HD, 60fps-LyEqj8mC7iQ.f299.mp4"


#youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o saul.mp4 --no-playlist https://www.youtube.com/watch?v=LyEqj8mC7iQ
#cvlc --video-wallpaper --no-audio "saul.mp4"

echo Doing neofetch...
#Neofetch
#sed -i.bak "${lineNumber}s/state0/XXXX/" file
sudo sed -i "6s/ / /" ~/.config/neofetch/config.conf
sudo sed -i.bak '6s/ /distro="SaulGoodmanOS"/' ~/.config/neofetch/config.conf

#sudo sed -i.bak "6s/ /distro="SaulGoodmanOS"/" ~/.config/neofetch/config.conf
#wget -O ~/.config/neofetch/saulfetch.txt https://raw.githubusercontent.com/sounddrill31/saulgoodmanOS-custom/main/saulfetch.txt
wget -O ~/saulfetch.txt https://raw.githubusercontent.com/sounddrill31/saulgoodmanOS-custom/main/saulfetch.txt
#alias neofetch = neofetch --ascii ~/.config/neofetch/saulfetch.txt
#echo "alias neofetch='neofetch --ascii ~/.config/neofetch/saulfetch.txt'" >> ~/.bashrc
echo "alias neofetch='neofetch --ascii ~/saulfetch.txt'" >> ~/.bashrc
neofetch



Splash Screen

echo Doing Splash Screen...

wget -O splash.png https://github.com/sounddrill31/saulgoodmanOS-custom/blob/main/Saulpapers/splash.png?raw=true
#Replace old location with new location
sudo mv /usr/share/plymouth/themes/pix/splash.png /usr/share/plymouth/themes/pix/splash.png.bak
#sudo cp splash.png /usr/share/plymouth/themes/pix/
sudo cp splash.png /usr/share/plymouth/themes/pix/saulsplash.png
#sudo sed -i -r 's/theme_image = Image("splash.png");/theme_image = Image("saulsplash.png")/' /usr/share/plymouth/themes/pix/pix.script
#sed -i 's/theme_image = Image("splash.png");/theme_image = Image("saulsplash.png");/g' /usr/share/plymouth/themes/pix/pix.script
sudo sed -i -r 's/"splash.png"/"saulsplash.png"/' /usr/share/plymouth/themes/pix/pix.script

sudo update-initramfs -u

#Menu Button

echo Doing Menu Button...

wget -O start-here.png https://github.com/sounddrill31/saulgoodmanOS-custom/blob/main/Saulpapers/start-here.png?raw=true
#Replace old location with new location
sudo mv /usr/share/icons/PiXflat/32x32/places/start-here.png /usr/share/icons/PiXflat/32x32/places/start-here.png.bak
sudo cp start-here.png /usr/share/icons/PiXflat/32x32/places/


cd ~
sudo rm -rf Saulpapers



rm updatesgos.sh
echo Reboot Recommended...
