# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:37:43 by ugdaniel          #+#    #+#              #
#    Updated: 2021/05/05 17:00:32 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
set -e

if [ $# = 1 ]; then
	if [ $1 = "off" ]; then
		sed -i 's/autoindex on;/autoindex off;/g' /etc/nginx/sites-available/ftserver
	elif [ $1 = "on" ]; then
		sed -i 's/autoindex off;/autoindex on;/g' /etc/nginx/sites-available/ftserver
	else
		echo "Please enter on/off to use this"
	fi
else
	echo "Usage : ./autoindex.sh on/off"
fi

nginx -s reload
