
MYSQL_ROOT_PASSWORD="your_password"


sed -i '1c GRANT ALL PRIVILEGES ON *.* TO "'root"'@'"%'" IDENTIFIED BY "'$MYSQL_ROOT_PASSWORD'" WITH GRANT OPTION;' init/init.sql
sed -i 'N;3 i FLUSH PRIVILEGES;' init/init.sql

#MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD docker-compose up -d mysql
