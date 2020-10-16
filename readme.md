### 文档结构
```text
————mariadb
   |____conf.d/
————redis
   |____data/
————nginx
   |____nginx.conf
   |____html/
   |____log/
————sso-service
    |____sso-service.dockefile
    |____sso-service.jar
    |____logs/
————sys3-service
    |____sys3-service.dockefile
    |____sys3-service.jar
    |____logs/
————docker-compose.yml
```

### 系统管理
**sys3-初始化数据脚本**
```shell script
docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db < /opt/sql/sys3-data-init.sql'
```
**sys4脚本补丁**
```shell script
docker-compose exec my_mariadb sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" sys3_db ' < ./sys4/ddl-sql/sys4-patch.sql

```