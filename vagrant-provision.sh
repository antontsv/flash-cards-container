#!/bin/bash

set -e

if [ ! -x /usr/bin/ansible ];then
    echo "Installing Ansible..."
    apt-get install -y software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
fi;

# Install dot files
su -l -c  "curl -s -L https://git.io/all.files | bash" ubuntu

# Install awesome-bash for all users
/home/ubuntu/bin/awesome-shell/INSTALL

# Download docker ubuntu ansible role
ansible-galaxy install angstwad.docker_ubuntu

ansible-galaxy install jgoodall.golang
