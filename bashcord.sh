#!/bin/bash
clear;

# sprawdz czy plik dummy istnieje, jesli nie wygeneruj
chmod +x subscripts/check.sh;
chmod +x subscripts/chat.sh
./subscripts/check.sh;

clear;

# powitanie i menu
clear;
echo "Welcome to BASHCORD"
echo "                           "
echo "          "
echo "          "
echo "What would U like to do?"
echo "          "
echo "1) Go to your existing chats"
echo "2) Create chat"
echo "2) Delete chats"
echo "3) Encrypt and send ur chat to a friend"

# wybranie opcji

echo "What do u wanna do?"
read opcja
if [[ $opcja == "1" ]]; then
	echo "   "
        echo "which chat do you want to use?"
	ls cache/chats

# wybierz chat w ktorym chesz rozmawiac
	echo " u need to use chat 1 anyway rn"

	#rozmowa
	./subscripts/chat.sh

elif [[ $opcja == "2" ]]; then
        echo "we r not ready yet"
fi
