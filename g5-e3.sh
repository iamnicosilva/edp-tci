#!/bin/bash

sudo cp tareas.service /etc/systemd/system/tareas.service
sudo cp tareas.timer /etc/systemd/system/tareas.timer
sudo systemctl enable tareas.timer
sudo systemctl start tareas.timer
sudo systemctl start tareas.timer
