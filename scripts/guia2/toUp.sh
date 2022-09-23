#!/bin/sh

[ -f $1 ] && TXT=$(cat $1) || TXT=$1

echo $TXT | tr '[a-z]' '[A-Z]'
