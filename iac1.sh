#!/bin/bash

echo "criando as pastas para os usuarios e grupos"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuario ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "criando usuarios do grupo GRP_ADM"
useradd carlos -c "Carlos e Jader" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria Cecilia e Rodolfo" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João Paulo e Daniel" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM

echo "criando usuarios do grupo GRP_VEN"
useradd debora -c "Débora e Cecília" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana a Bruta" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN

echo "criando usuarios para o grupo GRP_SEC"
useradd josefina -c "josefina palito" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amandinha S2" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Ceni o melhor de todos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC


echo "colocando o dono root e o grupo ADM para o diretorio /adm"
chown root:GRP_ADM /adm

echo "colocando o dono root e o grupo VEN para o diretório /ven"
chown root:GRP_VEN /ven

echo "colocando o dono root e o grupo SEC para o diretório /sec"
chown root:GRP_SEC /sec

echo "dando permissão total para o diretório /publico"
chmod 777 /publico

echo "dando permissão para o grupo no diretório /adm"
chmod 770 /adm

echo "dando permissão para o grupo no diretório /ven"
chmod 770 /ven

echo "dando permissao para o grupo no diretório /sec"
chmod 770 /sec