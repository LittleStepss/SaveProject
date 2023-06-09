#!/bin/bash

file_path="/home/toor/Bureau/FileToSave.txt"

current_time=$(date +"%H:%M:%S")

echo "Heure actuelle : $current_time" >> "$file_path"

