#!/bin/bash

# especificar el usuario
user="tu_usuario"

# encontrar todos los directorios
directories=$(find / -type d 2>/dev/null)

# iterar sobre los directorios
for dir in $directories; do
  # obtener el propietario del directorio
  owner=$(stat -c %U "$dir" 2>/dev/null)
  # si el propietario es el usuario especificado, imprimir el directorio
  if [ "$owner" = "$user" ]; then
    echo "$dir"
  fi
done
