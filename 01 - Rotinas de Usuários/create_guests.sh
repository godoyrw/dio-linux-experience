#!/bin/bash
echo "create Guest Users..."

useradd guest10 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt UmaSenha102030)
passwd guest10 -e

useradd guest11 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt UmaSenha102030)
passwd guest11 -e

useradd guest12 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt UmaSenha102030)
passwd guest12 -e

useradd guest13 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt UmaSenha102030)
passwd guest13 -e

echo "Done!"

