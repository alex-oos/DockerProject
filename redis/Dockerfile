# 使用Ubuntu 作为基础镜像
FROM ubuntu:latest

# 更新apt源并安装Redis
RUN apt-get update && apt-get install -y redis-server

# 设置Redis监听的IP和端口
RUN sed -i 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis/redis.conf
RUN sed -i 's/port 6379/port 6379/' /etc/redis/redis.conf

# 启动Redis服务
CMD redis-server /etc/redis/redis.conf
