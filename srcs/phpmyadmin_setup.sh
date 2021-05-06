# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    phpmyadmin_setup.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 14:52:48 by ugdaniel          #+#    #+#              #
#    Updated: 2021/05/06 14:59:34 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-english.tar.gz -P /tmp/

tar xvf /tmp/phpMyAdmin-4.9.7-english.tar.gz -C /tmp
mv /tmp/phpMyAdmin-4.9.7-english /var/www/ftserver/phpmyadmin
rm -rf /tmp/phpMyAdmin.tar.gz
mv /tmp/config.inc.php var/www/ftserver/phpmyadmin/
chmod 660 /var/www/ftserver/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/ftserver/phpmyadmin
service php7.3-fpm start

service mysql start
mysql -u root --skip-password -e "CREATE DATABASE wordpress;"
mysql -u root --skip-password -e "CREATE USER 'phpmyadmin'@'localhost' IDENTIFIED BY 'admin'";
mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;"
mysql -u root --skip-password -e "FLUSH PRIVILEGES;"
