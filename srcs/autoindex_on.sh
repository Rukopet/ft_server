#!/bin/bash
filename="/etc/nginx/sites-available/nginx.conf"
#GB:=\033[92m
#EB:=\033[0m
#RB:=\033[31m

# Возьмите строку поиска
#read -p "autoindex off;" search
# Возьмите строку замены
#read -p "autoindex on;" replace
#search="autoindex off"
#replace="autoindex on"
#if [[ $search != "" && $replace != "" ]]; then
#sed -i "s/$search/$replace/" $filename
#fi
sed -i "s/autoindex off/autoindex on/" $filename
service nginx reload