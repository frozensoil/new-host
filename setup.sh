#!/bin/bash

sed -i 's/=enforcing/=disabled/' /etc/selinux/config

systemctl disable firewalld

#history命令显示时间记录
grep -E 'HISTFILESIZE|HISTSIZE|HISTTIMEFORMAT' /etc/bashrc
if [ $? = 1 ];then
	echo "HISTFILESIZE=2000" >> /etc/bashrc && echo "HISTSIZE=2000" >> /etc/bashrc && echo 'HISTTIMEFORMAT="%Y%m%d %T "'>> /etc/bashrc && export HISTTIMEFORMAT
fi

yum install -y epel-release

yum makecache

yum install -y net-tools lrzsz pigz vim bash-completion gcc gcc-c++

mv vimrc ~/.vimrc
