# ft_server. Project for school 21 (ecole 42)
-------------

### Introduction.
---------------

This topic is intended to introduce you to system administration. It will make you aware
of the importance of using scripts to automate your tasks. For that, you will discover
the "docker" technology and use it to install a complete web server. This server will run
multiples services: Wordpress, phpMyAdmin, and a SQL database.

### Instructions.
---------------

* You must place all the necessary files for the configuration of your server in a folder called `srcs`.
* Your Dockerfile file should be at the root of your repository. It will build your container. You can’t use docker-compose.
* All the necessary files for your WordPress website should be in the folder `srcs`.

### Basic command with comments.
------------------------------

`docker build -t ft_server .` "Creation a ft_server image"
***
`docker image` "Show created images"
***
`run -it -p 80:80 -p 443:443 ft_server` "ft_server container launch"
***
`docker ps` "Show only running containers" or `docker ps -a` "Show all containers"
***
`docker rm id12345` "Remove 1 container with id #12345" or `docker system prune -f` "Remove all containers"
***
`docker rmi ft_server(or id12345)` "Remove 1 images ft_server or with id12345" or `docker image prune -a -f` "Remove all images"
***

If you are usin Linux Ubuntu and port 80 is busy, you can free port 80 with the command:\
`sudo service apache2 stop`

## Good Luck!