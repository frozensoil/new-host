#!/bin/bash

sed -i 's/=enforcing/=disabled/' /etc/selinux/config

systemctl disable firewalld

#history命令显示时间记录
echo "HISTFILESIZE=2000" >> /etc/bashrc && echo "HISTSIZE=2000" >> /etc/bashrc && echo 'HISTTIMEFORMAT="%Y%m%d %T "'>> /etc/bashrc && export HISTTIMEFORMAT
yum install -y epel-release

yum makecache

yum install -y net-tools lrzsz pigz vim bash-completion gcc gcc--c++

echo "set ts=4" >> /etc/vimrc

echo "set hlsearch" >> /etc/vimrc
