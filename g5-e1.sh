#!/bin/bash

# Obtener PID y comando asociado al proceso que ocupa más espacio de memoria
PID=$(ps -eo pid --sort=-%mem | head -n 2 | tail -n 1)
COMMAND=$(ps -p $PID -o cmd --no-headers)

echo "El proceso que ocupa más espacio de memoria es:"
echo "PID: $PID"
echo "Comando: $COMMAND"

# Obtener cantidad de procesos hijos
CHILDREN=$(pgrep -P $PID)

if [ -z "$CHILDREN" ]; then
  echo "El proceso no tiene procesos hijos"
else
  echo "El proceso tiene $(echo $CHILDREN | wc -w) procesos hijos:"
  echo "$CHILDREN"
fi

# Matar proceso y sus hijos
echo "Matando proceso y sus hijos..."
kill -TERM -$PID
echo "Proceso y sus hijos eliminados correctamente"

