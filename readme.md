### 文档结构
```text
————mariadb
   |____conf.d/
   |____data/
————redis
   |____data/
————nginx
   |____nginx.conf
   |____html/
        |____web-sso/
        |____web-sys4/
   |____log/
————authentication_center
    |____authentication_center.dockefile
    |____authentication_center.jar
    |____logs/
————sys4
    |____sys4.dockefile
    |____sys4-service.jar
    |____logs/
    |____init-sql/
    |____ddl-sql/
————docker-compose.yml
```

### 使用方式
直接执行`docker-compose`即可。 
需在数据库中：`sys-client`表中，修改具体系统的地址.
需将`nginx/html/*.zip`解压