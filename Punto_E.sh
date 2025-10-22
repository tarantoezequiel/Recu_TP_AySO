#!/usr/bin/env bash
set -e
mkdir -p ~/Punto_E
grep -m1 '^MemTotal:' /proc/meminfo >  ~/Punto_E/Filtro_basico.txt
lscpu | grep -E 'Model name|CPU MHz'  >> ~/Punto_E/Filtro_basico.txt
