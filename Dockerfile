FROM ubuntu:16.04

MAINTAINER yujmo  yujmo94@gmail.com

RUN apt-get update && apt-get install openssh-server -y \
    && sed 's/prohibit-password/yes/g' /etc/ssh/sshd_config 2>&1 \
    && systemctl enable ssh \
    && echo root:admin | chpasswd
