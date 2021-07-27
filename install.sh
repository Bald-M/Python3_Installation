#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH
#更换豆瓣源
mkdir ~/.pip
mv ./pip.conf ~/.pip
#安装依赖包
rpm -ivh ./py3/* --force --nodeps
#源码安装python
tar -xvf ./Python-3.6.8.tgz -C /usr/local/
mkdir -p /usr/local/python3
cd /usr/local/Python-3.6.8/
./configure --prefix=/usr/local/python3 && make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
echo "Python3.6.8 is installed successfully,enjoy!"
