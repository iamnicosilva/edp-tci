#!/bin/bash

# Buscamos los procesos de los navegadores
chrome=$(ps aux | grep -c "[c]hrome")
firefox=$(ps aux | grep -c "[f]irefox")
opera=$(ps aux | grep -c "[o]pera")
brave=$(ps aux | grep -c "[b]rave")
# Uso la inicial entre corchetes para evitar los sub-procesos de los navegadores y asi dar con el proceso padre


# Verificamos si alguno de los navegadores está abierto
if [ $chrome -gt 0 ] || [ $firefox -gt 0 ] || [ $opera -gt 0 ] || [ $brave -gt 0 ]
then
    echo "True"
else
    echo "False"
fi
