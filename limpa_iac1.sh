

#!/bin/bash

echo "excluindo diretorios"
rm -rf /adm
rm -rf /ven
rm -rf /sec
rm -rf /publico


echo "excluindo usuarios"
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r josefina
userdel -r amanda
userdel -r rogerio
userdel -r roberto


echo "excluindo grupos"
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC