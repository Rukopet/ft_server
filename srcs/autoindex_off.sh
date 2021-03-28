#!/bin/bash
filename="/etc/nginx/sites-available/nginx.conf"

### Возьмите строку поиска
##read -p "autoindex on;" search
### Возьмите строку замены
##read -p "autoindex off;" replace
#search="autoindex on;"
#replace="autoindex off;"
#if [[ $search != "" && $replace != "" ]]; then
#sed -i "s/$search/$replace/" $filename
#fi

sed -i "s/autoindex on/autoindex off/" $filename
service nginx reload