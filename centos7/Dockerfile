FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* \
    && yum clean all && yum update -y \
    && yum install openssh passwd openssl epel-release openssh-clients openssh-server -y \
    && yum clean all && yum update -y \
    && yum install supervisor -y \
    && rm -rf /etc/ssh/sshd_config \
    && echo "admin" | passwd --stdin root \
    && ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' \
    && ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' \
    && ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N ''
COPY sshd_config /etc/ssh/sshd_config
COPY supervisord.conf /etc/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord"]