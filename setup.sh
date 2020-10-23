#!/bin/sh

# 获取当前操作系统的默认ip
DEFAULT_HOST_IP=`ifconfig eth0 |grep inet | grep -v inet6 | awk '{print $2}'`
echo  "=== default HOST_IP:  $DEFAULT_HOST_IP === "
HOST_IP=$DEFAULT_HOST_IP

# 输入字符，判断是否需要重新定义host_ip
read -p "do you want to use the default HOST_IP, [Y/n] : " yn
if [ "y" != $yn  -a "Y" != $yn ]; then 
  read -p "you are going to redefine it ,please input the HOST_IP : " input	
  HOST_IP=$input
fi

# 最终的环境变量
echo  "=== the env param HOST_IP is: $HOST_IP"
export HOST_IP

# docker-compose config
docker-compose up -d 


