# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:29:48 by ugdaniel          #+#    #+#              #
#    Updated: 2021/05/06 14:38:46 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Use Debian Buster OS for custom image
FROM debian:buster

# Copy source files to the docker container in order to build the image
COPY srcs/install_packages.sh 	/tmp/
COPY srcs/server_setup.sh		/tmp/
COPY srcs/phpmyadmin_setup.sh	/tmp/
COPY srcs/wordpress_setup.sh	/tmp/

COPY srcs/server.conf			/tmp/
COPY srcs/wordpress-5.6.tar.gz	/tmp/
COPY srcs/wp-config.php			/tmp/
COPY srcs/config.inc.php		/tmp/

# Install all packages
RUN /tmp/install_packages.sh

# Setup server and copy autoindex script to the container
RUN /tmp/server_setup.sh
COPY srcs/autoindex.sh	/etc/nginx

# Setup Phpmyadmin
RUN /tmp/phpmyadmin_setup.sh

# Setup Wordpress 
RUN /tmp/wordpress_setup.sh

# Execute at start
CMD	service nginx start; \
	service mysql restart; \
	service php7.3-fpm restart; \
	sleep infinity
