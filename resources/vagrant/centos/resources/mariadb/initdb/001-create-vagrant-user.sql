CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';
CREATE USER 'vagrant'@'%' IDENTIFIED BY 'vagrant';

GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%';
