#!/bin/sh


[ -f "$1" ] && TXT=$(cat $1) || TXT=$*

echo $TXT | tr '[0-9]' 'x'
