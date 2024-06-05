

# 使用现有的镜像作为基础镜像
FROM ubuntu22.04:v1

# 安装JDK和Maven的依赖
RUN apt update && \
    apt install -y openjdk-11-jdk  maven && \
    apt clean  && \
    rm -rf /var/lib/apt/lists/*


# 打印JDK和Maven版本来验证安装
RUN java -version && mvn -version
