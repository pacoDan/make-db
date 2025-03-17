CREATE DATABASE IF NOT EXISTS servicio2;
go
CREATE USER 'root'@'172.18.0.1' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'172.18.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
go 
create user 'root'@'172.19.0.1' identified by '12345678';
grant all privileges ON *.* to 'root'@'172.19.0.1' with grant option;
flush privileges;
go 
create user 'root'@'172.21.0.1' identified by '12345678';
grant all privileges ON *.* to 'root'@'172.21.0.1' with grant option;
flush privileges;
go 
