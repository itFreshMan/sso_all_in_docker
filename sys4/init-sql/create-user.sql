CREATE DATABASE `sys3_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
grant all privileges on sys3_db.* to sys3@'%' identified by 'sys3'  WITH GRANT OPTION;

use `sys3_db`;

-- 解决导入数据中文乱码
source /opt/sql/sys3.sql;

source /opt/sql/sys3.sql;
source /opt/sql/sys3-data-init.sql;
source /opt/sql/sys4-patch.sql;
-- 数据存在中文乱码问题，改为手动执行
-- docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db < /opt/sql/sys3-data-init.sql'
-- docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db < /opt/sql/sys4-patch.sql'


-- source /opt/sql/sys4-client-url-update.sql;
-- update sys_client a set a.outter_url='http://192.168.129.42:30080/web-sys4' where a.CLIENT_ID='2135E3D00337471783D6AF46BD43CE4B';
