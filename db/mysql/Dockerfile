#
# MySQL
#
FROM mysql:5.7

# These commands are required in MacOS in order to solve a conflict between the
# mysql user and the host user. "mysql" user is using a UID of 1 and MacOS
# doesn't like that causing permission issues and not allowing the MySQL
# container to start.
RUN usermod -u 1000 mysql
RUN usermod -G staff mysql

CMD ["mysqld"]

EXPOSE 3306