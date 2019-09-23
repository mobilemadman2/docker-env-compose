FROM postgres:9.5

ADD ./conf/ssl.conf /etc/postgresql-common/ssl.conf

ADD ./cert/server.key /var/ssl/
ADD ./cert/server.crt /var/ssl/

# Add the ssl config setup script
COPY ./conf/pg_hba.conf /usr/share/postgresql/9.5/pg_hba.conf.sample
COPY ./conf/postgresql.conf /usr/share/postgresql/9.5/postgresql.conf.sample
COPY ./cert/server.crt ./cert/server.key /var/ssl/
RUN chown postgres.postgres /usr/share/postgresql/9.5/pg_hba.conf.sample \
                            /usr/share/postgresql/9.5/postgresql.conf.sample \
                            /var/ssl/server.key \
                            /var/ssl/server.crt && \
    chmod 600 /var/ssl/server.key &&\
    chgrp postgres /var/ssl/server.key &&\
    chown postgres /var/ssl/server.key


