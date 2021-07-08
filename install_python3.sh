#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH
rpm -ivh ./py3/* --force --nodeps
tar -xvf ./Python-3.6.8.tgz -C /usr/local/
mkdir -p /usr/local/python3
cd /usr/local/Python-3.6.8/
./configure --prefix=/usr/local/python3 && make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
