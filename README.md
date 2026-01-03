# docker-ubuntu-systemd-ssh

Ubuntu 22.04 Systemd & SSH Enabled Docker Image

This Docker image provides a **VPS-like Ubuntu 22.04 environment** with
**full systemd (systemctl) support** and **OpenSSH server enabled**.
It is ideal for testing services, systemd-based applications, and SSH access inside Docker.

---

## 🖥️ Screenshot

![Screenshot](screenshot.png)

> _(Optional: add container or systemctl screenshot)_

---

## ✨ Features

- Ubuntu **22.04 LTS**
- Full **systemd / systemctl** support
- **OpenSSH Server** pre-installed
- Root SSH login enabled (testing purpose)
- Port **22 exposed**
- VPS-like container behavior
- Docker compatible (privileged mode)

---

## 🚀 Usage

Run the container using Docker:

```bash
docker run -itd \
  --name ubuntu-systemd-ssh \
  --privileged \
  --cgroupns=host \
  -v /sys/fs/cgroup:/sys/fs/cgroup:rw \
  -p 2222:22 \
  docker-ubuntu-systemd-ssh
