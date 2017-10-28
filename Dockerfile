FROM linode/lamp

LABEL maintainer="khomeshthakre24@gmail.com"

WORKDIR /wiki

add wiki /wiki

RUN tar -xf /wiki/mediawiki-*.tar.gz \
	mv mediawiki-*/* /var/www/html/wiki \
		

RUN apt-get update \
	apt-get upgrade \
	service apache2 start \
	service mysql start \
	mysql -u root -pAdmin2015 < /wiki/sql_input\
