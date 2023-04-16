#!/bin/bash

function lista_usuarios() {
    # Obtener la lista de usuarios y contarlos
    num_usuarios=$(cat /etc/passwd | wc -l)

    # Crear una lista con los nombres de los usuarios
    usuarios=$(cut -d: -f1 /etc/passwd | sort)

    # Imprimir el número total de usuarios y la lista ordenada alfabéticamente
    echo "Número total de usuarios: $num_usuarios"
    echo "Lista de usuarios:"
    echo "$usuarios"
}


lista_usuarios
