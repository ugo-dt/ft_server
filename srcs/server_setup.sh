# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    server_setup.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:50:54 by ugdaniel          #+#    #+#              #
#    Updated: 2021/03/18 14:52:21 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

chown -R www-data /var/www/*
chmod -R 755 /var/www/*

mkdir -p /var/www/ftserver

mv /tmp/server.conf /etc/nginx/sites-available/ftserver
ln -s /etc/nginx/sites-available/ftserver /etc/nginx/sites-enabled/ftserver
rm -rf /etc/nginx/sites-enabled/default

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=France/L=Paris/O=42/OU=42Paris/CN=ugdaniel" -keyout /etc/ssl/private/ftserver.key -out /etc/ssl/certs/ftserver.crt
