!#/bin/bash

echo "Criando pastas."
mkdir /publico /adm /ven /sec

echo "Alterando as permissões das pastas."
chmod 770 /adm /ven /sec
chmod 777 /publico

echo "Criando grupos."
groupadd GRP_ADM & groupadd GRP_VEN & groupadd GRP_SEC

echo "Aplicando configurações de grupos  às pastas."
chown root:GRP_ADM /adm & chown root:GRP_VEN /ven & chown root:GRP_SEC /sec

echo "Criando usuários."
useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd -e -1 Senha123) -m -G GRP_ADM

useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_ADM

useradd joao -c "João" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_VEN

useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_VEN

useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_SEC

useradd amanda -c "Amanda" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_SEC

useradd rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 Senha123) -m -G GRP_SEC

echo "Finalizado!!!"
