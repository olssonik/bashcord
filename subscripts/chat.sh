#!/bin/bash

clear;

# wybierz useername

echo "What do u want ur username to be?"
read username
clear;

# -------------------------------------------------------------------------------------------

echo 'Please select chat.'

n=0
for chatfile in ~/bashcord/cache/chats/*
do
    n=$((n+1))
    printf "[%s] %s\n" "$n" "$chatfile"
    eval "chatfile${n}=\$chatfile"
done

if [ "$n" -eq 1 ]
then
    echo >&2 No chats were found. You can create one just run script again and choose option 2.
    exit
fi

printf 'Enter File Index ID (1 to %s): ' "$n"
read -r num
num=$(printf '%s\n' "$num" | tr -dc '[:digit:]')

if [ "$num" -le 0 ] || [ "$num" -gt "$n" ]
then
    echo >&2 Wrong selection.
    exit 1
else
    eval "CHATFILE=\$chatfile${num}"
    echo Selected chat is "$CHATFILE"
fi

# -------------------------------------------------------------------------------------------

        #rozmowa
        x=1
until [ $x -gt 2 ]
do
        clear
        cat $chatfile

        echo "------------------------------------ (CTRL + C) to quit "
        read newlinechat
        echo "<$username> $newlinechat" >> $chatfile
done
