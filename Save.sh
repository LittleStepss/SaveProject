#!/bin/bash

file_path="/home/toor/Bureau/FileToSave.txt"
destination_dir="/home/toor/Documents/SaveClient/"
backup_script="/home/toor/Bureau/Save.sh"

(crontab -l 2>/dev/null; echo "0 * * * * bash $backup_script") | crontab -

# Connexion SSH vers la machine distante et copie du fichier
sshpass -p "root" scp "$file_path" toor@192.168.192.129:"$destination_dir"

# Suppression après 3 heures sur la machine distante
sshpass -p "root" ssh toor@192.168.192.129 "find $destination_dir -type f -mmin +180 -delete"

