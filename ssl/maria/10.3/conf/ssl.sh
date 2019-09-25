#!/bin/bash
cp -fp /var/lib/mysql2/ca-cert.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/ca-key.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/server-key.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/server-cert.pem /var/lib/mysql/

# /etc/mysql/mariadb.conf.d/50-server.cnf
# cat <<-EOSQL > 50-server.cnf
# [mysqld]
# ssl-ca=/var/lib/mysql/ca-cert.pem
# ssl-cert=/var/lib/mysql/server-cert.pem
# ssl-key=/var/lib/mysql/server-key.pem
# EOSQL

