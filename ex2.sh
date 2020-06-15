#!/bin/bash
####
if (( EUID != 0 ))
then
  echo "aquest script sha d'executar amb root"
  exit 1
fi
#########
clear
opc="s"
while [[ $opc == "s" ]]
do
	clear
	echo -n "Indica el nom de l'usuari:"
	read usuari
	echo -n "Estas totalment segur que vols borrar l'usuari i el seu directori?"
	read resp
	if [[ $resp == "s" ]]
	then
		userdel -r $usuari 2> /dev/null
	fi
	echo -n "Vols continuar?";
	read opc
done
exit 0

