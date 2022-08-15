#!/bin/bash
echo "Create Dirs..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Create Groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Create Users..."

useradd raquel -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_ADM
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_ADM

useradd goreth -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_VEN
useradd godoy -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_VEN
useradd henrique -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_VEN

useradd noeme -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_SEC
useradd lemos -m -s /bin/bash -p $(openssl passwd -crypt UmaSenha102030) -G GRP_SEC

echo "Dirs permissions...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Done!"

