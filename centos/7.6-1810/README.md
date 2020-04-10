# 简介

基于的Alpine系统的Docker镜像。基于官方Centos 7.6.1810镜像。



## 历史版本

- v7.6, latest: 当前版本



## 基本信息

* 镜像地址：endial/centos:v7.6
* 依赖镜像：centos:7.6.1810



与官方镜像差异：

- 修改默认源为阿里云镜像

```shell
  mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup;
  curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
```

- 增加epel-release



## 数据卷

该容器没有定义默认的数据卷。该容器仅用作创建其他业务容器的基础容器。



## 使用说明

### 镜像管理

下载镜像：

```shell
docker pull endial/centos:v7.6
```

查看镜像：

```shell
docker images
```



### 启动容器

生成并运行一个新的容器：

```shell
docker run -it --rm endial/centos:v7.6 /bin/bash
```

- `-it`：使用交互式终端启动容器
- `--rm`：退出时删除容器
- `endial/centos:v7.6`：包含版本信息的镜像名称
- `/bin/bash`：在容器中执行`/bin/bash`命令



----

本文原始来源 [Endial Fang](https://github.com/endial) @ [Github.com](https://github.com)

