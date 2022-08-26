
su postgres

cd

createuser -S -R -D -l uniappuser

psql

ALTER USER uniappuser WITH ENCRYPTED PASSWORD 'uniappPWD';

CREATE DATABASE uniappdb;

GRANT ALL PRIVILEGES ON DATABASE uniappdb TO uniappuser;

CREATE TABLE test (id VARCHAR(3), nombre VARCHAR(10));

INSERT INTO test (id, nombre) VALUES('1','uno');
INSERT INTO test (id, nombre) VALUES('2','dos');
INSERT INTO test (id, nombre) VALUES('3','tres');

\q

exit

--------------------------------------------

nano /etc/postgresql/14/main/postgresql.conf 

listen_addresses = '*'          # what IP address(es) to listen on;


nano /etc/postgresql/14/main/pg_hba.conf

# IPv4 local connections:

host    all             all             all            scram-sha-256


service postgresql restart

---------------------------------------------

psql -h 54.147.221.39 -p 5432 -U uniappuser -d uniappdb

---------------------------------------------

sudo apt-get --purge remove postgresql-14 postgresql-client-14 postgresql-client-common postgresql-common postgresql-contrib postgresql-contrib-14