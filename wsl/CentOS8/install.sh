#!/bin/bash

useradd jenkins_agent
echo Password: jenkins_agent
passwd jenkins_agent

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* && \
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-* && \
sudo yum update -y && \
sudo yum install mc -y && \
sudo yum install python3-pip -y && \
sudo -H -u jenkins_agent bash -c 'pip3 install --upgrade --no-deps --force-reinstall --no-cache-dir  --user ansible' 