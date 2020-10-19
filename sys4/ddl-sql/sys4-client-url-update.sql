-- sys4系统管理 访问地址(nginx转发)
update sys_client a set a.outter_url='http://192.168.129.42:30080/web-sys4' where a.CLIENT_ID='2135E3D00337471783D6AF46BD43CE4B';