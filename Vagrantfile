# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.define :gerrit do |g|
    g.vm.hostname = "gerrit"
    g.vm.network :private_network, ip: "192.168.33.10"
  
    g.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/gerrit.yaml"
      ansible.limit = "gerrit"
      ansible.sudo = true
      ansible.inventory_path = "hosts"
      ansible.verbose = "-vv"
      ansible.extra_vars = {
        node: "gerrit",
	puppet_file: "gerrit",
        ansible_ssh_user: "vagrant"
      }
    end

    g.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end
  end

  config.vm.define :zuul do |g|
    g.vm.hostname = "zuul"
    g.vm.network :private_network, ip: "192.168.33.11"
  
    g.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/zuul.yaml"
      ansible.limit = "zuul"
      ansible.sudo = true
      ansible.inventory_path = "hosts"
      ansible.verbose = "-vvvv"
      ansible.extra_vars = {
        node: "zuul",
	puppet_file: "zuul",
        ansible_ssh_user: "vagrant"
      }
    end

    g.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end
end
