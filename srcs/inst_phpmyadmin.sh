wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0\
.4-all-languages.tar.gz
tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz -C /var/www/html/
mv /var/www/html/phpMyAdmin-5.0.4-all-languages /var/www/html/phpMyAdmin
mkdir /var/www/html/phpMyAdmin/tmp
rm -f phpMyAdmin-5.0.4-all-languages.tar.gz