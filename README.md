vagrant-centos
==============

CentOS 6.6 x86_64  
Use Packer to build the base image, tested with v0.6.1  
Provisioned with Vagrant 1.6.3  

Clone with the following command  
`git clone --recursive git@github.com:erumble/vagrant-centos.git`
  
Navigate to the packer-templates subdirectory and issue the following command to build the base image  
`packer build centos-6.6-x86_64.json`
