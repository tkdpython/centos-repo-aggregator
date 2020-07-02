FROM centos:latest
COPY /scripts/* /scripts
COPY /etc/yum.repos.d/* /etc/yum.repos.d
COPY /etc/pki/rpm-gpg/* /etc/pki/rpm-gpg
RUN yum -y update
CMD /bin/bash
