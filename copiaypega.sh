#!/bin/bash

echo "Guia N:"
read GUIA
echo "Ej N:"
read EJ
echo "Nombre:"
read NAME


SCRIPT="g$GUIA-e$EJ.sh"
BRANCH="guia$GUIA-ej$EJ-$NAME"

mv g*.sh $SCRIPT

echo "" > $SCRIPT

nano $SCRIPT

git add .
git commit -sm "subo script"
git branch $BRANCH
git checkout $BRANCH
git push origin $BRANCH



