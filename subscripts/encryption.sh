#!/bin/bash

clear;

echo 'Please select chat that you want to ecnrypt and send to your friend.'

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

clear

echo " DISCLAIMER! you are about to provide passfrase for your file, remember to provide password to your friend."

sleep 5;

gpg -c $CHATFILE

mv $CHATFILE ~/bashcord/export

clear

echo 'Do you still want to save state of current chat in "history" folder?'
echo "          "
echo "          "
echo "What would U like to do?"
echo "          "
echo '1) Keep my file in "history"'
echo "2) Remove"

read choice


if [[ $choice == "1" ]]; then
		mv $CHATFILE ~/bashcord/cache/history/ 
		echo 'Your file is ready to send, its waiting in folder "export"'
        exit

if [[ $choice == "2" ]]; then
        rm -f $CHATFILE
		echo 'Your file is ready to send, its waiting in folder "export"'
        exit
fi
