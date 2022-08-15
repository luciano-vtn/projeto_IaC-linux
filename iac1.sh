#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuáios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

useradd robson -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd karla -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd eder -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd edinaldo -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd antonio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd roberta -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd mazeto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd silvio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Expecificando Permissões dos Diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "FIM...!" 






