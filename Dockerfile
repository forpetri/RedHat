FROM redhat/ubi8


# 刷新镜像源
RUN yum clean all && yum makecache

RUN \
  yum update -y && \
  yum install -y \
  vim \
  wget \
  sudo

RUN \
  echo "root:Ww12345!" | chpasswd && \
  echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 22
EXPOSE 3306
EXPOSE 80
