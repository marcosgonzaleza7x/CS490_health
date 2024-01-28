#!/bin/bash

read -p "Enter folder: " source_folder
read -p "Enter destination folder:" destination_folder

if [ -d "$source_folder"]; then

	mkdir -p "$destination_folder"

	cp -r "$source_folder"/* "$destination_folder"
	echo "Files copied"
else
	echo "File copy failed"
fi
