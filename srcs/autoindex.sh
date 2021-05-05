# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:37:43 by ugdaniel          #+#    #+#              #
#    Updated: 2021/03/18 14:50:11 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

set -e

if  [$# = 1 ]; then
	if [$1 = "off" ]; then
		sed -i 's/autoindex on;/autoindex off;/g' /etc/nginx/sites-available/ftserver
	elif [ $1 = 'on' ]; then
		sed -i 's/autoindex off;/autoindex on;/g' /etc/nginx/sites-available/ftserver
	else
		echo "autoindex error: invalid option: $1, expected on or off\n"
	fi
else
	echo "autoindex error: expected 1 argument"
fi

nginx -s reload