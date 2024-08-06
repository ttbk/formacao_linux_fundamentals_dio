#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache 2..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicacao web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Done!"