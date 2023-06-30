# 构建镜像
docker build -t my-mysql .

#  运行容器
docker run --name my-mysql -d -p 3306:3306 my-mysql


# 启动项目
docker start my-mysql

# 进入容器
docker exec -it my-mysql bash

# 停止容器
docker stop my-mysql


