#!/usr/bin/env bash
set -e
mkdir -p ~/Punto_F
{
  echo "Mi ip publica es: $(curl -s ifconfig.me)"
  lscpu | grep -E 'Model name|CPU MHz'
} > ~/Punto_F/Filtro_Avanzado.txt
