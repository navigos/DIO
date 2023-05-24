!#/bin/bash

echo "Atualizando repositorio."
apt update

echo "Instalando o Apache."
apt install apache2 -y

echo "Instalando o Unzip."
apt install unzip -y

echo "Entrando no diretorio '/tmp'"
cd /tmp

echo "Fazendo o download do arquivo."
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo."
unzip main.zip

echo "Movendo os arquivos para '/var/www/html'"
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Ativando inicializacao do Apache."
systemctl enable apache2

echo "Reiniciando servico Apache."
systemctl restart apache2

echo "Finalizado!!!"
