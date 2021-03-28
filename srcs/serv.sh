mv /home/srcs/nginx.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html
wp core download --allow-root --path="/var/www/html/wordpress"
wp core config --allow-root --dbname=wp_database --dbuser=admin --dbpass=1234 --dbhost=localhost --dbprefix=wp_
wp core install --allow-root --url="localhost"  --title="21school"
--admin_user="admin" --admin_password="1234" --admin_email="egums@pipa.com"
cd /
mv /home/srcs/phpMyAdmin-conf.php /var/www/html/phpMyAdmin/.
mkdir /etc/nginx/ssl