#!/bin/bash


function verificar_usuario {
    # Verificar argumento con el nombre de usuario
    if [ -z "$1" ]
    then
        echo "Debe especificar el nombre de usuario como argumento"
    else
        # Buscar el nombre de usuario en el archivo /etc/passwd
        resultado=$(grep "^$1:" /etc/passwd)

        # Verificar si se encontró el usuario
        if [ -z "$resultado" ]
        then
            echo "El usuario $1 no existe en el sistema"
        else
            # Obtener el UID del usuario
            uid=$(echo $resultado | cut -d: -f3)
            echo "El usuario $1 tiene UID $uid"
        fi
    fi
}


verificar_usuario $1


