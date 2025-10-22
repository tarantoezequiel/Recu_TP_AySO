#!/usr/bin/env bash
set -e
cd ~
mkdir -p Ejercicio_D/{rx,tx}/lotes_{1..20}
mkdir -p Ejercicio_D/rx/extras_{1..100}
tree Ejercicio_D/ --noreport | pr -T -s' ' -w 80 --column 4
