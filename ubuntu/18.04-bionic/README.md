# 简介

基于的Alpine系统的Docker镜像。基于官方Ubuntu 18.0.4镜像。



## 基本信息

* 镜像地址：endial/ubuntu:v18.0.4
* 依赖镜像：ubuntu:18.0.4



与官方镜像差异：

- 修改默认源为阿里云镜像

  ```shell
  deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
  deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
  
  deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
  deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
  
  deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
  deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
  
  deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
  deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
  
  deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
  deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
  ```

- 增加locales，并默认设置为`en_US`



## 数据卷

该容器没有定义默认的数据卷。该容器仅用作创建其他业务容器的基础容器。 



## 使用说明

### 镜像管理

下载镜像：

```shell
docker pull endial/ubuntu:v18.0.4
```

查看镜像：

```shell
docker images
```



### 启动容器

生成并运行一个新的容器：

```shell
docker run -it --rm endial/ubuntu:v18.0.4 /bin/bash
```

- `-it`：使用交互式终端启动容器
- `--rm`：退出时删除容器
- `endial/ubuntu:v18.0.4`：包含版本信息的镜像名称
- `/bin/bash`：在容器中执行`/bin/bash`命令



----

本文原始来源 [Endial Fang](https://github.com/endial) @ [Github.com](https://github.com)

