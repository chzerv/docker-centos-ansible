FROM centos:latest
MAINTAINER "Xristos Zervakis"

# Install Ansible via pip so we get the latest version.
ENV ansible_packages "ansible ansible-lint yamllint molecule molecule-containers"

RUN yum -y update \
    & yum -y install rpm centos-release \
    & yum -y install \
    epel-release \
    sudo \
    initscripts \
    which \
    python3 \
    python3-pip \
&& yum clean all

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN pip3 install $ansible_packages

RUN mkdir -p /etc/ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

CMD [ "/sbin/init" ]

