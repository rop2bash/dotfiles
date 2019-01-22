#!/bin/bash

LAUNCHED=$(qdbus | grep clementine)

if [[ $LAUNCHED != "" ]]; then

	#clementine
	ARTIST=$(qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get org.mpris.MediaPlayer2.Player Metadata | grep artist | cut -d ' ' -f2-)
	TITLE=$(qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get org.mpris.MediaPlayer2.Player Metadata | grep title  | cut -d ' ' -f2-)

	if [[ $ARTIST != "" ]]; then
	  OUTPUT=$ARTIST
	fi

	if [[ $TITLE != "" ]]; then
	  OUTPUT="$OUTPUT: $TITLE"
	fi

else
	OUTPUT=""	
fi
echo "$OUTPUT"
