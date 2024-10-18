FROM debian:latest

RUN apt update && apt upgrade && apt install -y \
    mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY script.sh /etc/mysql/script.sh

RUN mkdir /run/mysqld && chmod +x /etc/mysql/script.sh

CMD ["/etc/mysql/script.sh"]