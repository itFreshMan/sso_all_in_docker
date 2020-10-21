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
1.`.env`配置了宿主机端口地址,若修改了`NGINX_*`配置端口，则需要修改`nginx/nginx.conf`监听端口以及**步骤2**url配置;
2. 修改`sys4/ddl-sql/sys4-client-url-update.sql`,**修改url地址**.
3. 直接执行`setup.sh`即可。 
> 执行`setup.sh`脚本出现`/bin/sh^M：损坏的解释器: 没有那个文件或目录`错误,
>```
>vim setup.sh   
>set ff=unix 
>:wq
>```
                     
