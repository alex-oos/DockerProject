# Mysql  8.0 安装教程



##  一、 构建镜像

```shell
docker build -t my-mysql .
```
## 二、启动容器

```shell
docker run --name my-mysql -d -p 3306:3306 my-mysql
```

## 三、修改数据库允许所有ip访问

```shell
 #  进入容器内
 docker exec -it my-mysql bash
```

![image-20231009151113218](https://cdn.jsdelivr.net/gh/alex-oos/picture-bed/img/2023/image-20231009151113218.png)

```sql
# 设置root用户支持所有ip访问，先登录mysql 数据库,默认密码是123456
mysql -uroot -p 
```

![image-20231009151321885](https://cdn.jsdelivr.net/gh/alex-oos/picture-bed/img/notbook/image-20231009151321885.png)

```sql
# 使用mysql 数据库
use mysql;
# 查询用户权限 
select host, user, authentication_string, plugin from user;
# 修改Host为%,代表外网可以连接,并刷新
update user set Host='%' where User ='root';
FLUSH PRIVILEGES;
# 授权语句
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'WITH GRANT OPTION;
# 修改root用户密码，查看发现默认没有密码
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '123456' ;
```

![image-20231009152203806](https://cdn.jsdelivr.net/gh/alex-oos/picture-bed/img/notbook/image-20231009152203806.png)

现在就可以愉快的使用mysql

