FROM centos:7.6.1810

LABEL \
	"Version"="7.6" \
	"Description"="Docker image for Centos 7.6-1810." \
	"Dockerfile"="https://github.com/cofigo/docker-libs" \
	"Vendor"="Endial Fang (endial@126.com)"

RUN set -eux; \
	mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup; \
	curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo; \
	\
	yum -y install epel-release; \
	\
	\
	\
	yum clean all;


CMD []
