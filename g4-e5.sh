#!/bin/bash

# Lee el valor de UID_MIN en el archivo /etc/login.defs
uid_min=$(grep "^UID_MIN" /etc/login.defs | awk '{print $2}')

# Lee el valor de UID_MAX en el archivo /etc/login.defs
uid_max=$(grep "^UID_MAX" /etc/login.defs | awk '{print $2}')

# Imprime los valores obtenidos
echo "El valor de UID_MIN es: $uid_min"
echo "El valor de UID_MAX es: $uid_max"
