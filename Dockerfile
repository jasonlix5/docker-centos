FROM centos

RUN rpm -ivh http://mirrors.aliyun.com/centos/7.1.1503/os/x86_64/Packages/wget-1.14-10.el7_0.1.x86_64.rpm ;\
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo ;\
wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo ;\
yum update -y ; yum -y install lrzsz ; yum clean all

CMD ["/usr/bin/bash"]
