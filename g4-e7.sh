#!/bin/bash

get_file_group() {
  file=$1
  group=$(ls -l "$file" | awk '{print $4}')
  echo "$group"
}

group=$(get_file_group $1)
echo "El archivo $1 pertenece al grupo $group"

