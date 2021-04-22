CREATE DATABASE IF NOT EXISTS wp;
CREATE USER IF NOT EXISTS 'user42'@'localhost' IDENTIFIED BY 'user42';
GRANT ALL PRIVILEGES ON wp.* TO 'user42'@'localhost';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'user42'@'localhost';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass';
FLUSH PRIVILEGES;
