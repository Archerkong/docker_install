#!/bin/bash
sudo yum remove docker \
	      docker-client \
	      docker-client-latest \
	      docker-common \
	      docker-latest \
	      docker-latest-logrotate \
	      docker-logrotate \
	      docker-engine
rm -rf /etc/docker/daemon.json
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum install -y yum-utils device-mapper-persistent-data lvm2 wget
wget -O /etc/yum.repos.d/docker-ce.repo https://mirrors.huaweicloud.com/docker-ce/linux/centos/docker-ce.repo
sudo sed -i 's+download.docker.com+mirrors.huaweicloud.com/docker-ce+' /etc/yum.repos.d/docker-ce.repo
yum clean all
sudo yum makecache
systemctl start docker
systemctl enable docker
docker --version
docker compose version
mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": [
     "https://docker.xuanyuan.me",
     "https://docker.1ms.run"
    ]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
