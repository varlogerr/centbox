CREATE USER 'kurdupel'@'localhost' IDENTIFIED BY 'Secret123#';
CREATE USER 'kurdupel'@'%' IDENTIFIED BY 'Secret123#';

GRANT ALL PRIVILEGES ON *.* TO 'kurdupel'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'kurdupel'@'%';
