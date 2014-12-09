# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Ports to forward
PORTS = [
  3000, # rails application
  3306  # mysql
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos65-x64-packer"
  config.vm.hostname = "vgrnt-plgrnd"
  config.vm.box_url = "file://./packer-templates/builds/virtualbox/CentOS-6.6-x86_64.box"

  # allow guest os to use host os ssh keys
  config.ssh.forward_agent = true

  # forward the ports
  PORTS.each do |port|
    config.vm.network :forwarded_port, guest: port, host: port
  end

  # config.omnibus.chef_version = :latest
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./chef-cookbooks/cookbooks", "./chef-cookbooks/site-cookbooks"]
    chef.roles_path = "./chef-cookbooks/roles"
    chef.data_bags_path = "./chef-cookbooks/data_bags"
    # chef.add_recipe 'mysql::client'
    # chef.add_recipe 'mysql::server'
    chef.add_role "mysql_server"
  end

  config.vm.synced_folder "~/src/", "/home/vagrant/src"
  # run a shell script or two
  # config.vm.provision "shell", path: "./scripts/bashrc.sh"
  # config.vm.provision "shell", inline: "cp /vagrant/scripts/git.sh /etc/profile.d"

end
