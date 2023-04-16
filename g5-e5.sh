#!/bin/bash

while true
do
  # Obtener la fecha y hora actual
  fecha=$(date +"%Y-%m-%d_%H-%M-%S")

  # Obtener la lista de procesos y sus PID
  processes=$(ps -eo pid,cmd)

  # Guardar la lista de procesos en un archivo con la fecha y hora actual
  echo "$processes" > "procesos_en_ejecución_$fecha.txt"

  # Esperar 2 minutos antes de volver a obtener la lista de procesos
  sleep 120
done
