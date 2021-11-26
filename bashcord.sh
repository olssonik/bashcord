#!/bin/bash
clear;

# daj permisje pozostalym plikom

chmod +x subscripts/chat.sh
chmod +x subscripts/check.sh
chmod +x subscripts/generate.sh
chmod +x subscripts/menu.sh
chmod +x subscripts/deletechat.sh
chmod +x subscripts/encryption.sh

# sprawdz czy dummy istnieje
./subscripts/check.sh;


clear;



# powitanie i menu
./subscripts/menu.sh


# wybranie opcji

echo "What do u wanna do?"


read opcja


if [[ $opcja == "1" ]]; then
		./subscripts/chat.sh

elif [[ $opcja == "2" ]]; then
        ./subscripts/generate.sh

elif [[ $opcja == "3" ]]; then
		./subscripts/deletechat.sh

elif [[ $opcja == "4" ]]; then
		./subscripts/encryption.sh

elif [[ $opcja == "5" ]]; then

	echo "we will do this in  a second"

fi
