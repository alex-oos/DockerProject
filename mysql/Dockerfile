FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y mysql-server

RUN echo 'mysql-server mysql-server/root_password password 123456' | debconf-set-selections
RUN echo 'mysql-server mysql-server/root_password_again password 123456' | debconf-set-selections

RUN sed -i 's/.*bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf && \
    sed -i 's/.*port.*= 3306.*/port = 3306/' /etc/mysql/mysql.conf.d/mysqld.cnf

EXPOSE 3306

CMD ["/usr/sbin/mysqld"]
