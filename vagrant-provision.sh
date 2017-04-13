#!/bin/bash

set -e

if [ ! -x /usr/bin/ansible ];then
    echo "Installing Ansible..."
    apt-get install -y software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
fi;
