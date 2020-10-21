#!/bin/sh
docker-compose up -d my_mariadb

service_id_cmd="docker-compose ps -q my_mariadb"
service_id=`eval $service_id_cmd`
echo "`date`-----  $service_id"

while [ -z $service_id ]
do
        echo "`date`-----  $service_id"
        sleep 3
        service_id=`eval $service_id_cmd`
done

docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db -e "$SSO_UPDATE_SYS4_INNER_URL"'
