#!/bin/bash

function cpu_uso {
    # segunda columna del comando ps aux porcentaje de uso de la CPU
    cpu=$(ps aux | awk '{print $3}')

    echo $cpu
}

cpu_uso
