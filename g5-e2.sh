#!/bin/bash

# Esperar 2 minutos
sleep 2m

# Obtener lista de estados de servicios y guardar en archivo
systemctl list-units > estados_servicios.txt

