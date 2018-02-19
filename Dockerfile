FROM ubuntu:16.04

MAINTAINER yujmo  yujmo94@gmail.com

RUN apt-get update && apt-get install openssh-server -y \
    && sed 's/PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config > /dev/null \
    && RUN systemctl enable ssh \
    && echo root:admin | chpasswd
