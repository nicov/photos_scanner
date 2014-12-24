#!/bin/bash

dir_path=~/Images/scanner
bin_path=./multicrop
ref_bg_point="30,15"
output_name=$(date +%y%m%d%H%M%S).jpg
output_full_name=$dir_path/$output_name
tmp_scanned_file_name=$dir_path/$output_name

##
# Vérification de l'éxistence du dossier de destination et création si besoin
#
if [ ! -d $dir_path ]
then
	mkdir $dir_path
fi

scanimage --resolution 300 | convert - $tmp_scanned_file_name
multicrop -c $ref_bg_point $tmp_scanned_file_name $output_full_name


