FROM debian:buster
EXPOSE 80 443

RUN mkdir /home/srcs
COPY ./srcs /home/srcs

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y php7.3-cli php7.3-fpm php7.3-mysql php7.3-zip \
	php7.3-mbstring php7.3-curl
RUN apt-get install -y default-mysql-server curl wget nginx
RUN ["sh", "/home/srcs/inst_phpmyadmin.sh"]
RUN ["sh", "/home/srcs/create_database.sh"]
RUN ["sh", "/home/srcs/serv.sh"]

CMD ["sh", "/home/srcs/basic.sh"]