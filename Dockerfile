# 1. 基础镜像：找一个装好 Java 21 的环境
FROM openjdk:21-jdk-slim

# 2. 作者信息
LABEL maintainer="ruichi123"

# 3. 复制文件：把 Jenkins 构建好的 jar 包放入镜像的 /app 目录
# 注意：这里的 target/*.jar 是 Maven 构建后的产物
COPY target/*.jar /app.jar

# 4. 启动命令：容器启动时自动运行这个 jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
