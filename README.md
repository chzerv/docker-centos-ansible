# CentOS 7 Image for Ansible Testing

![Build](https://github.com/chzerv/docker-centos-ansible/workflows/Build/badge.svg?branch=7)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chzerv/docker-centos-ansible)

This Dockerfile builds a CentOS 7 based container, capable to use `systemd` with Ansible and Ansible 
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
2. Clone the branch you're interested in. For example, for CentOS 7: `git clone --branch=7 https://github.com/chzerv/docker-centos-ansible.git`.
3. `cd` into the directory and run `docker build -t centos7-ansible .`

# How to use

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Pull this image from _Docker hub_: `docker pull chzerv/docker-centos-ansible:7` (or use the 
   image you built locally).
3. Run a container:

   ```shell
   docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro docker-centos-ansible:7
   ```

4. Run Ansible inside that container:

   ```shell
   docker exec -it $container_id ansible --version
   ```

# Notes

This image is used for testing Ansible roles and playbooks locally and/or in CI, hence, security is not
a concern. It is not intended or recommended to use this image in production environments.
