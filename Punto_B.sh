#!/usr/bin/env bash
set -e
sudo groupadd -f p1c1_2024_g1
id -u p1c1_2024_u1 &>/dev/null || sudo useradd -m -G p1c1_2024_g1 p1c1_2024_u1
echo "p1c1_2024_u1:clave1" | sudo chpasswd
sudo chown -R p1c1_2024_u1:p1c1_2024_g1 /datos
sudo chmod -R 750 /datos
sudo su -c "whoami > /datos/validar1.txt" p1c1_2024_u1
