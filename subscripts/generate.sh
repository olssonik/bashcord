#!/bin/bash

echo "Who do you want to address this chat to?"

read filename

FILEPATH=~/bashcord/cache/chats/

touch $FILEPATH$filename.txt

echo """

You can start coversation with your friend right here!

""" > $FILEPATH$filename.txt