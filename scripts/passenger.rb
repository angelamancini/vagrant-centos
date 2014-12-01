#!/bin/bash

# place the server code in /var/www/
# run `chown -R apache:apache /var/www/`
sudo -i
yum install -y gcc gcc-c++ libcurl-devel openssl-devel zlib-devel httpd httpd-devel apr-devel apr-util-devel
gem install passenger
passenger-install-apache2-module

