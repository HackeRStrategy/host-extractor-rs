#!bin/bash
#Created: 13/11/2018
#Actualizacion 03/01/2019
#by: real strategy
#Instalacion exitosa
clear 
while :
do
#menu
clear
echo -e "\e[1;32m"
echo "+----------------------------------+"
echo "+BUSCADOR DE HOST HTTP & SSL V=1.0 +"
echo "+----------------------------------+"
echo ""
echo -e "\e[1;33m1) BUSCAR HOST & SSL"
echo -e "\e[1;33m2) MOSTRAR STATUS"
echo -e "\e[1;33m3) GUARDAR HOSTS"
echo -e "\033[1;33m4) VER MANUAL"
echo -e "\033[1;33m5) VER CREDITOS"
echo -e "\033[1;33m0) SALIR DEL MENU"
echo ""
echo -e "\e[1;31m"
echo -n "Escoger opcion: "
read opcion
#listo menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mPresiona una tecla para continuar con el script...!\e[0m";
read foo
;;
2)echo ""
echo "Mostrando status de hosts";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mPresiona una tecla para continuar..\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mPegar los hosts para poder sacarle los estatus\e[0m";
echo -e "\e[1;31mRecuerde CTRL + C para salir\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
echo ""
cat manual.txt
read foo;
;;
5)clear
echo ""
echo -e "\e[1;33mCREDITOS AL DESARROLLADOR\e[0m"
echo ""
echo -e "\e[1;31mCoder: @RealStrategy"
echo -e "\e[1;32m"
echo "YOUTUBE : https://youtube.com/RealHackRWAM "
echo "TELEGRAM: https://t.me/RealHackRWAM "
echo "TELEGRAM: https://t.me/RealStrategyRS "
echo "FACEBOOK: https://m.facebook.com/groups/142565756559228 "
echo "FACEBOOK: https://m.facebook.com/RealHackRWAM "
echo ""
echo -e "\e[1;31mMENSAJE DE RS\e[0m"
echo ""
echo -e "\e[1;36mNunca dejes de aprender... :)\e[0m"
echo ""
read foo;
;;
0)clear
exit 0;;
#error
*)clear
echo "comando invalido...";
;;
esac
done


