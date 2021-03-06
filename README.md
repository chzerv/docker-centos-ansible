# CentOS 8 Image for Ansible Testing

>**NOTE**: This image is now  **DEPRECATED**: Use:
>+ [centos7-systemd-ansible](https://github.com/chzerv/centos7-systemd-ansible)
>+ [centos8-systemd-ansible](https://github.com/chzerv/centos8-systemd-ansible)

![Build](https://github.com/chzerv/docker-centos-ansible/workflows/Build/badge.svg?branch=master)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chzerv/docker-centos-ansible)

This Dockerfile builds a CentOS 8 based container, capable to use `systemd` with Ansible and Ansible 
testing tools pre-installed.

# Branches/Tags

Each branch of this repository represents a CentOS version, with the `master` branch representing the
latest version. Pull the branch (version) you are interested in.

| Branch | Distribution version | Image tag |
| :----: | :------------------: | :-------: |
| master | latest (8)           | latest, 8 |
| 7      | 7                    | 7         |

# How to build locally

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Clone the branch you're interested in. For example, for CentOS 8: `git clone https://github.com/chzerv/docker-centos-ansible.git`.
3. `cd` into the directory and run `docker build -t centos8-ansible .`

# How to use

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Pull this image from _Docker hub_: `docker pull chzerv/docker-centos-ansible:latest` (or use the 
   image you built locally).
3. Run a container:

   ```shell
   docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro docker-centos-ansible:latest
   ```

4. Run Ansible inside that container:

   ```shell
   docker exec -it $container_id ansible --version
   ```

# Notes

This image is used for testing Ansible roles and playbooks locally and/or in CI, hence, security is not
a concern. It is not intended or recommended to use this image in production environments.
