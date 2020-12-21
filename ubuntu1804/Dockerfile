FROM ubuntu:18.04
MAINTAINER yujmo  yujmo94@gmail.com

RUN apt-get update && apt-get -y install \
    iputils-ping \
    net-tools \
    openssh-server \
    parted \
    python python-pip python3 python3-pip \
    sudo \
    udev \
    upstart \
    vim \
    xfsprogs \
    && sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config \
    && sed -i "s/#GatewayPorts no/GatewayPorts yes/g" /etc/ssh/sshd_config \
    && /lib/systemd/systemd-sysv-install enable ssh \
    && systemctl mask getty@tty1.service \
    && echo root:admin | chpasswd

RUN apt-get -y install firefox
