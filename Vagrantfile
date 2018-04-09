# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define :search_guard do |search|
      search.vm.box = "centos/7"
      search.vm.hostname = "elk-server"
      search.vm.network "private_network", ip: "192.168.50.200"
      search.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
      search.ssh.forward_agent = true
      search.ssh.insert_key = false
      search.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ] 

      config.vm.provider "virtualbox" do |v|
          v.memory = 8024
          v.cpus = 2
      end
    end


    config.vm.provision "shell", path: "search_guard.sh"

end

