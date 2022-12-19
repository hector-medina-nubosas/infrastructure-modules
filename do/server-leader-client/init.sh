#!/bin/bash
# Update repository.
apt update -y
# Download and install pip.
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
# Install ansible with pip.
python3 -m pip install ansible
# Run ansible playbook to install and configure nomad and dependencies.
ansible-playbook https://github.com/hector-medina-nubosas/ansible2/blob/main/nomad/nomad.yml