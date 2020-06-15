#!/bin/bash
clear
if (( EUID != 0 ))
then
	echo "Script sexecuta com root"
	exit 1
fi
opc="1"
while [[ $opc = "1" ]]
do
	clear
	echo -n "Dona el nom dun paquet"
	read nompaquet
	aptitude install $nompaquet
	echo "paquet instalat"
	echo -n "Vols continuar=;"
	read opc
done
exit 20
