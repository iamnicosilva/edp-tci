#!/bin/bash

get_owner() {
    if [ -f "$1" ]; then  # verificar que el archivo exista
        owner=$(ls -l "$1" | awk '{print $3}')  # obtener el propietario con awk
        echo "El propietario del archivo es: $owner"
    else
        echo "El archivo no existe"
    fi
}

get_owner($1)
