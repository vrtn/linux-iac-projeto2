#!/bin/bash

"Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

"Baixando arquivos da aplicação..."
cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

"Copiando arquivos da aplicação..."
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

"Script finalizado."
