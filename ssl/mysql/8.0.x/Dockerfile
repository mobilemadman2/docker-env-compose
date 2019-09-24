FROM mysql:8.0

RUN rm -v "$(which mysql_ssl_rsa_setup)"

COPY ./conf/init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./cert/ /var/lib/mysql2/

# RUN chown -R mysql.mysql /var/lib/mysql2/ && \
    # chmod -R 600 /var/lib/mysql2/ &&\
    # chgrp -R mysql /var/lib/mysql2/ 

COPY ./conf/ssl.sh /docker-entrypoint-initdb.d/

RUN chown root.root /docker-entrypoint-initdb.d/ssl.sh && \
    chmod +x /docker-entrypoint-initdb.d/ssl.sh && \
    chgrp root /docker-entrypoint-initdb.d/ssl.sh