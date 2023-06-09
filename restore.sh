#!/bin/bash

backup_dir="/home/toor/Documents/SaveClient/"
destination_dir="/home/toor/Bureau/"

# Affichage des sauvegardes disponibles
sshpass -p "root" ssh toor@192.168.192.129 "ls -lh $backup_dir"

read -p "Entrez le nom du fichier de sauvegarde à restaurer : " backup_file

sshpass -p "root" scp toor@192.168.192.129:"$backup_dir$backup_file" "$destination_dir"

