#!/bin/bash

# Fecha actual
now=$(date +%s)

# Fecha límite inferior (5 días atrás)
date_from=$(date -d "5 days ago" +%s)

# Fecha límite superior (3 días atrás)
date_to=$(date -d "3 days ago" +%s)

# Buscar archivos modificados en el intervalo de tiempo
find / -type f -newermt "$(date -d @$date_from '+%Y-%m-%d %H:%M:%S')" ! -newermt "$(date -d @$date_to '+%Y-%m-%d %H:%M:%S')" -print0 |
while IFS= read -r -d $'\0' file; do
    # Mostrar los permisos de cada archivo encontrado
    ls -l "$file"
done

