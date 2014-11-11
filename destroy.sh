#!/bin/bash

vagrant halt
vagrant destroy -f
vagrant box remove centos65-x64-packer

