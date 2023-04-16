#!/bin/bash

# Obtener la lista de procesos y sus PID
processes=$(ps -eo pid,cmd)

# Mostrar la lista en la consola
echo "$processes"
