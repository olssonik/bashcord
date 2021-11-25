#!/bin/bash


# sprawdz czy plik dummy istnieje, jesli nie wygeneruj

echo "testing : dummy.dic";

if [[ -f ~/discord-2.0/cache/dummy.dic ]]

then
echo "test result = positive";


else
echo "test result = negative";
        sleep 1;
echo "generating dummy.dic";
        sleep 2;
touch ~/discord-2.0/cache/dummy.dic;

echo "file generated, you can continue"
sleep 1;

fi

# sprawdz czy posiada gpg

REQUIRED_PKG="gpg"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi
