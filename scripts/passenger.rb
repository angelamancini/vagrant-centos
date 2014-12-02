#!/bin/bash

# place the server code in /var/www/
# run `chown -R apache:apache /var/www/`
# run this script with sudo
# if `gem` is installed to /usr/local/bin, add that path to /etc/sudoers with visudo
# or run sudo and set the env with the following command
# `sudo env "PATH=$PATH" <command>`
yum install -y gcc gcc-c++ libcurl-devel openssl-devel zlib-devel httpd httpd-devel apr-devel apr-util-devel
gem install passenger
passenger-install-apache2-module

