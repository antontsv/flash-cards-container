# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "fc" do |d|
        d.vm.box = "ubuntu/xenial-cloud"
        d.vm.box_url = "https://cloud-images.ubuntu.com/xenial/20170311/xenial-server-cloudimg-amd64-vagrant.box"
        d.vm.hostname = "flash-cards-node"
        d.vm.network "private_network", ip: "10.100.100.111"
        d.vm.provision :shell, path: "vagrant-provision.sh"
        d.vm.provision :shell,
              inline: 'PYTHONUNBUFFERED=1 ansible-playbook \
                      /vagrant/ansible/docker.yml -i /vagrant/ansible/hosts/default'
        d.vm.provider "virtualbox" do |v|
            v.memory = 512
        end
    end
end
