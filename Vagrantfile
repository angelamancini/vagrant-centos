# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos65-x64-packer"
  config.vm.hostname = "vgrnt-plgrnd"
  config.vm.box_url = "file://./packer-templates/builds/virtualbox/CentOS-6.6-x86_64.box"

  # allow guest os to use host os ssh keys
  config.ssh.forward_agent = true

  # config.omnibus.chef_version = :latest
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./chef-cookbooks/cookbooks", "./chef-cookbooks/site-cookbooks"]
    chef.roles_path = "./chef-cookbooks/roles"
    chef.data_bags_path = "./chef-cookbooks/data_bags"
    chef.add_role "mysql_server"
  end

  # run a shell script or two
  # config.vm.provision "shell", path: "./scripts/bashrc.sh"
  # config.vm.provision "shell", inline: "cp /vagrant/scripts/git.sh /etc/profile.d"

end
