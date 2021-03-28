#!/bin/bash
filename="/etc/nginx/nginx.conf"
#GB:=\033[92m
#EB:=\033[0m
#RB:=\033[31m
echo "Введите 'y' для автоиндексации"
read ind
if [[ $ind == 'y' ]]; then
  bash "/home/srcs/autoindex_on.sh" 1>/dev/null 2>&1
else
  bash "/home/srcs/autoindex_off.sh" 1>/dev/null 2>&1
fi
