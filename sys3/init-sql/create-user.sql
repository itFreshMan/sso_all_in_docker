CREATE DATABASE `sys3_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
grant all privileges on sys3_db.* to sys3@'%' identified by 'sys3'  WITH GRANT OPTION;

use `sys3_db`;

-- 解决导入数据中文乱码
source /opt/sql/sys3.sql;
source /opt/sql/sys3-data-init.sql;