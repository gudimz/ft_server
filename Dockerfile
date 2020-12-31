# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agigi <agigi@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/31 15:08:52 by agigi             #+#    #+#              #
#    Updated: 2020/12/31 16:22:04 by agigi            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
#Command for ft_server:
#docker build -t ft_server .
#docker run -p 80:80 -p 443:443 -it ft_server
#docker ps -a


#Update Software Packages
RUN apt-get update && apt-get -y upgrade
#Install utils
RUN apt-get -y install wget openssl
#Install Nginx
RUN apt-get -y install nginx
#Install MySQL
RUN apt-get -y install mariadb-server
#Install php
RUN apt-get -y install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

EXPOSE 80 443

ENTRYPOINT sh.start.sh && bash
