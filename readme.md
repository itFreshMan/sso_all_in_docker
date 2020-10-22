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
1.. 直接执行`setup.sh args[0]`即可,`args[0]为宿主机ip地址`。 
> 执行`setup.sh`脚本出现`/bin/sh^M：损坏的解释器: 没有那个文件或目录`错误,
>```shell
>vim setup.sh   
>set ff=unix 
>:wq
>```
                     
