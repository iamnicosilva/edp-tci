#!/bin/bash

# Contamos la cantidad de procesos activos del sistema
procesos=$(ps aux | wc -l)

# Contamos la cantidad de archivos en el directorio /proc
archivos=$(ls -1 /proc | grep -E "^[0-9]+$" | wc -l)

if [ $procesos -eq $((archivos-1)) ]
then
    echo "La cantidad de procesos activos en el sistema coincide con la cantidad de archivos en /proc"
else
    echo "Hay una discrepancia entre la cantidad de procesos activos y la cantidad de archivos en /proc"
fi
