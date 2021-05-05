# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_packages.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:48:58 by ugdaniel          #+#    #+#              #
#    Updated: 2021/03/18 15:01:48 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

apt-get update
apt-get install -y wget
apt-get install -y nginx
apt-get install -y openssl
apt-get install -y mariadb-server
apt-get install -y php7.3-fpm php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-soap php7.3-zip php7.3-intl
