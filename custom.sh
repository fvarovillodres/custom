#/bin/bash

echo "Instalando HTOP"

apt-get install htop -y

echo "Copiando .bashrc"

cp ./bashrcroot /root/.bashrc

echo "Copiando comando install"

cp ./install /usr/local/bin/install 

echo "Copiando comando update"

cp ./update /usr/local/bin/update

echo "Copiando comando upgrade"

cp ./upgrade /usr/local/bin/upgrade

echo "Copiando comando ips"

cp ./ips.sh /usr/local/bin/ips

echo "Comprobando..."

ls /usr/local/bin/ips /usr/local/bin/install /usr/local/bin/upgrade /usr/local/bin/update

echo "###### Customización realizada ######"

exit
