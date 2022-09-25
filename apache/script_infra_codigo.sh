#!/bin/bash

echo 'Atualizando servidor ...'

apt-get update
apt-get upgrade -y

echo 'Instalando apache2 ...'
apt-get install apache2 -y

echo 'Instalando unzip ...'
apt-get install unzip -y

cd /tmp

echo 'baixando arquivos da aplicação ...'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'descompactando arqvuvo e movendo para pasta do padrão do apache ...'

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html