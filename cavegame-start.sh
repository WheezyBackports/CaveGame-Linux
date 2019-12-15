#!/bin/bash


if [ ! -f ~/cavegame/ ]; then

	git clone https://github.com/conariumsoft/cavegame.git

fi


if [ -f love2d.AppImage ]; then 

	./love2d.AppImage cavegame/.
	
else

	wget -O love2d.AppImage https://bitbucket.org/rude/love/downloads/love-11.3-x86_64.AppImage && chmod +x *.AppImage && ./love2d.AppImage cavegame/.

fi



