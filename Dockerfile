FROM linode/lamp

LABEL maintainer="khomeshthakre24@gmail.com"

WORKDIR /wiki

ADD wiki /wiki

RUN tar -xf /wiki/mediawiki-*.tar.gz \
	mv mediawiki-*/* /var/www/html/wiki \
		

RUN apt-get update \
	apt-get upgrade \
	service apache2 start \
	service mysql start \
	#mysqladmin -u root password "root123" \ 
	
