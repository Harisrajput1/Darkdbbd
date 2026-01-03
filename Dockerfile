FROM ubuntu:22.04

ENV container=docker
ENV DEBIAN_FRONTEND=noninteractive

# Basic packages + systemd
RUN apt update && apt install -y \
    systemd systemd-sysv \
    sudo \
    dbus \
    nano \
    curl \
    wget \
    openssh-server \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# SSH setup
RUN mkdir /var/run/sshd && \
    echo 'root:root' | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# systemd requirements
VOLUME ["/sys/fs/cgroup"]

# SSH port expose
EXPOSE 22

STOPSIGNAL SIGRTMIN+3

CMD ["/sbin/init"]
