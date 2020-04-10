FROM debian:8.11

RUN set -eux \
	&& mv /etc/apt/sources.list /etc/apt/sources.list.bak \
	&& echo "deb http://mirrors.aliyun.com/debian/ jessie main contrib non-free" > /etc/apt/sources.list \
	&& echo "deb-src http://mirrors.aliyun.com/debian/ jessie main contrib non-free" >> /etc/apt/sources.list \
	&& echo "deb http://mirrors.aliyun.com/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list \
	&& echo "deb-src http://mirrors.aliyun.com/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list \
#	&& echo "deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib" >> /etc/apt/sources.list \
#	&& echo "deb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib" >> /etc/apt/sources.list \
#	&& echo "deb http://mirrors.aliyun.com/debian/ jessie-backports main contrib non-free" >> /etc/apt/sources.list \
#	&& echo "deb-src http://mirrors.aliyun.com/debian/ jessie-backports main contrib non-free" >> /etc/apt/sources.list \
	&& apt-get update -y \
	&& apt-get upgrade -y \
	\
	&& apt-get install -y locales \
	\
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
	\
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8


CMD []
