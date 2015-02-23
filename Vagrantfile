# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Ports to forward
PORTS = [
  3000, # rails application
  3306, # mysql
  2812, # monit
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos66-x64-packer"
  config.vm.hostname = "vgrnt-plgrnd"
  config.vm.box_url = "file://./packer-templates/builds/virtualbox/CentOS-6.6-x86_64.box"

  # allow guest os to use host os ssh keys
  config.ssh.forward_agent = true

  # forward the ports
  PORTS.each do |port|
    config.vm.network :forwarded_port, guest: port, host: port
  end

  # share some folders
  config.vm.synced_folder "~/src/", "/home/vagrant/src"
  config.vm.synced_folder "~/p_src/", "/home/vagrant/p_src"
end
