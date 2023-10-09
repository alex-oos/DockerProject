

[TOC]

# docker  使用教程

##  一、docker 安装

1. ubuntu 下安装docker 

   ```shell
   apt install docker.io
   ```

   

## 二、docker 打包镜像

## 1.  安装好docker 

## 2. 创建Dockerfile

这里使用 python 作为一个基础

```dockerfile
# 使用官方的Python基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 将当前目录下的所有文件复制到工作目录
COPY . /app

# 安装依赖
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 暴露端口
EXPOSE 80

# 定义环境变量
ENV NAME World

# 运行命令
CMD ["python", "app.py"]
```

## 3. 构建Docker镜像

在项目根目录下，打开终端或命令提示符，运行以下命令来构建Docker镜像：

```shell
docker build -t your-image-name .
```

将`your-image-name`替换为你想要的镜像名称。这将根据Dockerfile中的指令构建一个Docker镜像。

## 4. 登录Docker Hub

如果你还没有登录Docker Hub，需要先登录。在终端或命令提示符中运行以下命令：

```bash
docker login <username> -u <username> -p <password>
```

然后输入你的Docker Hub用户名和密码。

## 5. 镜像添加标签

将`your_username`替换为您的用户名，`your_repository`替换为您的仓库名称，`your_image`替换为您要推送的镜像名称：默认为latest 使用默认即可

```
docker tag your_image-name your_username/your_repository:your_tag
```

## 6. 上传镜像到Docker Hub

使用以下命令将镜像推送到Docker Hub：

```bash
docker push your_username/your_repository:your_tag
```

将`your-image-name`替换为你之前设置的镜像名称。这将把镜像上传到Docker Hub。

现在你已经成功制作了一个Docker镜像并将其上传到了Docker Hub。其他人可以通过访问你的Docker Hub页面（https://hub.docker.com/r/yourusername/your-image-name/）来获取和使用这个镜像。|
