### 文档结构
```text
————mariadb
   |____conf.d/                             # 挂载mysql 配置目录
   |____data/                               # 挂载mysql 数据目录
————redis
   |____data/                               # 挂载redis 数据目录   
————nginx
   |____nginx.conf                          # 挂载nginx配置文件, 已配置端口！ 
   |____html/   
        |____web-sso/                       # 统一认证 前端html 
        |____web-sys4/                      # 系统管理 前端html  
   |____log/                                # nginx log目录
————authentication_center
    |____authentication_center.dockefile    # 统一认证镜像dockerfile
    |____authentication_center.jar
    |____logs/
————sys4
    |____sys4.dockefile                     # 系统管理镜像dockerfile
    |____sys4-service.jar
    |____logs/
    |____init-sql/
            |____create-schema.sql          # 创建数据库,数据库用户,以及执行后续ddl语句脚本
            |____update-sys4-client.sh      # 更新系统管理,redirect_url脚本文件
    |____ddl-sql/
            |____sys3.sql                   # 创建表结构sql
            |____sys3-data-init.sql         # 初始化sql脚本
            |____sys4-patch.sql             # 系统升级后,sql脚本补丁
————docker-compose.yml
————.env                                    # docker-compse相关环境配置
————setup.sh                                # 一键启动脚本
```

### 使用方式
1. 直接执行`setup.sh `即可。   
> 执行`setup.sh`脚本出现`/bin/sh^M：损坏的解释器: 没有那个文件或目录`错误,  
>```shell
>vim setup.sh   
>set ff=unix 
>:wq
>```
              
2. 浏览器直接访问:[http://${HOST_IP}:${NGINX_HOST_PORT}/web-sys4](http://${HOST_IP}:${NGINX_HOST_PORT}/web-sys4)     
