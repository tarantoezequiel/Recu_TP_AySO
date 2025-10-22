#!/usr/bin/env bash
set -e
sudo groupadd -f p1c1_2024_Todos
id -u p1c1_2024_u2 &>/dev/null || sudo useradd -m -g p1c1_2024_Todos p1c1_2024_u2
echo "p1c1_2024_u2:clave1" | sudo chpasswd
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1
sudo chgrp -R p1c1_2024_Todos /datos
sudo chmod -R g+w /datos
sudo find /datos -type d -exec chmod o+x {} \;
sudo find /datos -type f -exec chmod o-r {} \;
sudo su -c "id >> /datos/validar1.txt" p1c1_2024_u2
