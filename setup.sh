#!/bin/sh
docker-compose up -d

## 确保my_mariadb服务已经创建完毕， 可以在服务sys4启动完成之后，执行 初始化脚本
service_id_cmd="docker-compose ps -q sys4"
service_id=`eval $service_id_cmd`
echo "`date`-----  $service_id"

while [ -z $service_id ]
do
        echo "`date`-----  $service_id"
        sleep 3
        service_id=`eval $service_id_cmd`
done

## 初始化数据脚本
docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db -e "$SSO_UPDATE_SYS4_INNER_URL"'
