#!/bin/bash

echo 'Please select chat that you want to delete.'

n=0
for chatfile in ~/bashcord/cache/chats/*
do
    n=$((n+1))
    printf "[%s] %s\n" "$n" "$chatfile"
    eval "chatfile${n}=\$chatfile"
done

if [ "$n" -eq 1 ]
then
    echo >&2 No chats were found.
    exit
fi

printf 'Enter File Index ID Of A Chat That You Want To Delete (1 to %s): ' "$n"
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

rm $CHATFILE