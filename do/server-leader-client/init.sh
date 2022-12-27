#!/bin/bash
# Update repository.
apt update -y
# Download and install pip.
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
# Install ansible with pip.
python3 -m pip install ansible
# Install git
apt install git -y
# Run ansible playbook to install and configure nomad and dependencies.
ansible-pull -U https://github.com/hector-medina-nubosas/ansible2.git nomad/nomad-${ server_role }.yml %{ if server_join != null  } --extra-vars "server_join=${server_join}" %{ endif }

