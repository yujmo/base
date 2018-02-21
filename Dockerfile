FROM ubuntu:16.04

MAINTAINER yujmo  yujmo94@gmail.com

RUN apt-get update && apt-get install openssh-server python-pip parted  iputils-ping vim sudo python net-tools udev parted xfsprogs -y \
    && sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config \
    && echo "cephuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
    && systemctl enable ssh \
    && useradd -m -s /bin/bash cephuser \
    && echo root:admin | chpasswd \
    && echo cephuser:admin |chpasswd
