# Ubuntu Systemd Docker Image (SSH Enabled)

This repository provides a **Dockerfile for Ubuntu 22.04** with **full systemd (systemctl) support** and **OpenSSH server enabled**.  
It is useful for VPS-like containers, testing system services, or running systemd-based applications inside Docker.

---

## ✨ Features

- Ubuntu **22.04 LTS**
- Full **systemd / systemctl** support
- **OpenSSH Server** pre-installed
- SSH root login enabled (for testing)
- Port **22 exposed**
- Compatible with Docker (privileged mode)

---

## 📦 Files

- `Dockerfile` – Ubuntu systemd + SSH Docker image

---

## 🚀 Build the Image

```bash
docker build -t ubuntu-systemd-ssh .
