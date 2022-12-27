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
ansible-pull -U https://github.com/hector-medina-nubosas/ansible2.git nomad/nomad-${ server_role }.yml %{ if server_join != null  } --extra-vars "\"server_join=${server_join}\"" %{ endif }

# root@server-leader-client:~# cat install.sh install-nomad.sh install-docker.sh 
# ./install-nomad.sh
# ./install-docker.sh
# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" --yes
# sudo apt-get update -y && sudo apt-get install nomad -y
# sudo apt-get remove docker docker-engine docker.io containerd runc -y
# sudo apt-get install docker.io -y

# root@server-leader-client:~# nomad --version
# Nomad v1.4.3 (f464aca721d222ae9c1f3df643b3c3aaa20e2da7)

# root@server-leader-client:~# docker -v
# Docker version 20.10.16, build 20.10.16-0ubuntu1

# ---
# - name: Install and configure nomad.
#   hosts: localhost
#   tasks:
#     - shell: echo 'hello nomad'
#       register: cmd_output
#     - debug: msg="Shell script from ansible {{ cmd_output }}"