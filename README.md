# Container image: CentOS Ansible

[![Build Status](https://travis-ci.com/chzerv/docker-centos-ansible.svg?branch=7)](https://travis-ci.com/chzerv/docker-centos-ansible)

This Dockerfile builds a CentOS-based container with Ansible and other Ansible testing tools pre-intalled.

# Branches/Tags

| Branch | Distribution version | Image tag |
| :----: | :------------------: | :-------: |
| master |      latest (8)      |  latest   |
|   7    |          7           |     7     |

# How to build locally

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Each branch represents a tag (version), with the `master` branch being the latest version. Clone the branch you're interested in. E.g., for CentOS 7: `git clone --branch=7 https://github.com/chzerv/docker-centos-ansible.git`.
3. `cd` into the directory and run `docker build -t centos7-ansible`

# How to use

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Pull this image from _Docker hub_: `docker pull chzerv/docker-centos-ansible:7`. Remember, the tag represents the distribution version, so change it according to your needs.
3. Run a container:

   ```shell
   docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro docker-centos-ansible:7
   ```

4. Run Ansible inside that container:

   ```shell
   docker exec -it $container_id ansible --version
   ```
