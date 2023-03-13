#!/bin/bash

echo "Criando pastas..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando groups..."

groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "Criando users das Vendas..."

useradd roberto -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd debora -m -s /bin/bash -G GRP_VEN

echo "Criando users da Administração..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM

echo "Criando users do Secretariado..."

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC

echo "Cuidando das permissões"

chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Finalizando script..."
echo "Script finalizado!"




