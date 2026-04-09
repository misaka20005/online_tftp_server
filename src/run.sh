#!/bin/sh 
# 拷贝客户端运行脚本
cp ./run2.sh ../clients/client/
cp ./run2.sh ../clients/client1/
cp ./.lock.db ../clients/client
cp ./.lock.db ../clients/client1

# 编译项目
make all

# 删除编译文件
make clean

# 运行服务器
./../bin/server 192.168.60.33
