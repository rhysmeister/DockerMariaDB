DROP DATABASE test;
DELETE FROM mysql.user WHERE user = '';
CREATE USER 'root'@'_gateway' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'_gateway';
FLUSH PRIVILEGES;
