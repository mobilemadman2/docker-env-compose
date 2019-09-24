#!/bin/bash
rm -f /var/lib/mysql/ca.pem
rm -f /var/lib/mysql/client-cert.pem
rm -f /var/lib/mysql/client-key.pem
rm -f /var/lib/mysql/server-cert.pem
rm -f /var/lib/mysql/server-key.pem

cp -fp /var/lib/mysql2/ca.pem /var/lib/mysql/ca.pem
cp -fp /var/lib/mysql2/server-key.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/server-cert.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/client-key.pem /var/lib/mysql/
cp -fp /var/lib/mysql2/client-cert.pem /var/lib/mysql/
