FROM centos:latest
COPY /scripts/* /scripts
COPY /etc/yum.repos.d/* /etc/yum.repos.d
COPY /etc/pki/rpm-gpg/* /etc/pki/rpm-gpg
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
    && yum -y update
CMD /bin/bash
