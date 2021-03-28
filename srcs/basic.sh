clear
service mysql start
service php7.3-fpm start
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out \
/etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj \
"/C=RU/ST=Tatarstan/L=Kazan/O=21school/OU=egums/CN=ft_server"
service nginx start
bash "/home/srcs/autoindex_check.sh"
bash