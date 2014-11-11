#!/bin/bash

pushd ~vagrant
  wget https://gist.githubusercontent.com/erumble/671fdcc906bced1c4034/raw/f8eb5d73e4614dfa70a8b0b4246934da783a1536/.bashrc -O .bashrc
  chown vagrant:vagrant .bashrc
popd
