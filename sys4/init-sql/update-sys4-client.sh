#!/bin/sh
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db -e "$SSO_UPDATE_SYS4_INNER_URL"
