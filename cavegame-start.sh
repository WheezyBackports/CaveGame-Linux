#!/bin/bash

love2dRUN="./love2d.AppImage cavegame/."

## Downloads Cave Game source if not already available
if [ ! -d $PWD/cavegame ]; then

	sh git-repo.sh

fi

## Downloads love2d if not already available 	
if [ ! -f love2d.AppImage ]; then 

	wget -O love2d.AppImage https://bitbucket.org/rude/love/downloads/love-11.3-x86_64.AppImage && chmod +x *.AppImage

fi

## If no arguments are specified run game
if [ "$1" == "$NULL" ]; then

	$love2dRUN

## If argument is specified run game in developer mode
elif [ "$1" == "--dev" ]; then

	$love2dRUN -dev

## If argument is specified run update slave script
elif [ "$1" == "--update" ]; then

	sh git-pull.sh

fi

