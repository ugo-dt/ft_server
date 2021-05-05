# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wordpress_setup.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:54:26 by ugdaniel          #+#    #+#              #
#    Updated: 2021/05/05 16:12:48 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

tar xvf /tmp/wordpress-5.6.tar.gz -C /var/www/ftserver/
rm -rf /tmp/wordpress-5.6.tar.gz
mv /tmp/wp-config.php /var/www/ftserver/wordpress/wp-config.php
