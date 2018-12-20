FROM alpine:3.8

ARG MARIADB_VERSION=10.2.15
ENV MYSQL_HOST=mysql
ENV MYSQL_USER=backup
COPY src /
RUN mariadb-client-setup
ENTRYPOINT ["mariadb-client-entrypoint"]
CMD ["mysql"]
