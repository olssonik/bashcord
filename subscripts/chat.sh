#!/bin/bash

clear;

# wybierz useername

echo "What do u want ur username to be?"
read username

# wybierz chat w ktorym chesz rozmawiac
        echo " u need to use chat 1 anyway rn"

        #rozmowa
        x=1
until [ $x -gt 10 ]
do
        clear
        cat cache/chats/chat

        echo "------------------------------------ (CTRL + C) to quit "
        read newlinechat
        echo "<$username> $newlinechat" >> ~/bashcord/cache/chats/chat
done
