#!/bin/bash

yum groupinstall "Development Tools" -y
yum install python-devel openssl-devel git libffi-devel sshpass -y

cd /tmp
curl -O https://bootstrap.pypa.io/get-pip.py
python /tmp/get-pip.py

cd ~/
git clone https://github.com/Little-gg/kree
cd kree
pip install -r requirements.txt
ansible-playbook install.yml
