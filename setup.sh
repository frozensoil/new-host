#!/bin/bash

sed -i 's/=enforcing/=disabled/' /etc/selinux/config

systemctl disable firewalld

yum install -y epel-release

yum makecache

yum install -y net-tools lrzsz pigz vim bash-completion gcc gcc--c++

echo "set ts=4" >> /etc/vimrc

echo "set hlsearch" >> /etc/vimrc
