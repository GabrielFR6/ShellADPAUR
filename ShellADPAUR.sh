  GNU nano 6.2                                                  ShellADPAUR.sh                                                  Modificado  
#!/bin/bash
echo "Caso em algum momento o App Peça a senha do SUDO, Por favor digite para que possa continuar a instalaçao!"

echo "por favor digite o nome do App que ira instalar: "
read NDAPP

echo "Digite o Nome do Seu Usuario: "
read user

echo "Digite o Link do Aur: "
read aur

cd /home/$user/Downloads
git clone $aur

cd /home/$user/Downloads/$NDAPP

makepkg -s 

sudo pacman -U *.tar.zst 
