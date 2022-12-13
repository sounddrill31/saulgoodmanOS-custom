#!/bin/bash

sudo apt update
sudo apt install -y neofetch
neofetch


echo "Testing Over, Do you want to continue modifying your Raspbian/Raspberry Pi OS x86(Arm not officially supported, yet you can try.) into Saul Goodman OS? You can run this in cubic(WIP) or on Bare Metal."
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
sudo apt purge snaps
sudo apt-get install -y imagemagick
sudo pip install youtube-dl
sudo apt-get install -y vlc
mkdir Saulpapers
cd Saulpapers
#wget -O saulpaperback.png https://i.kym-cdn.com/photos/images/newsfeed/001/893/464/3e7.jpg
#display -window root saulpaperback.png
wget -O saulpaperfront.png https://i.kym-cdn.com/photos/images/newsfeed/001/893/472/c1e.png 
sudo cp -v ~/Saulpapers/saulpaperfront.png "/usr/share/lxde/wallpaper/saulpaperfront.png"
pcmanfm --set-wallpaper="/usr/share/lxde/wallpapers/saulpaperfront.png"

#display -window root saulpaperfront.png

#pcmanfm --set-wallpaper yourfile.jpg

#youtube-dl -f bestvideo+bestaudio/best --no-playlist https://www.youtube.com/watch?v=LyEqj8mC7iQ
#cvlc --video-wallpaper --no-audio "3D Saul Goodman, Extended to Full Song, 1080p Full HD, 60fps-LyEqj8mC7iQ.f299.mp4"


#youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o saul.mp4 --no-playlist https://www.youtube.com/watch?v=LyEqj8mC7iQ
#cvlc --video-wallpaper --no-audio "saul.mp4"
cd ~



rm updatesgos.sh
