#!/bin/bash
echo "hello world!"
# # Update repository.
# apt update -y
# # Download and install pip.
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# # Install ansible with pip.
# python3 -m pip install ansible
# ansible-pull -U https://github.com/hector-medina-nubosas/ansible2.git -C apache-latest sample-app-2/apache-server.yml --extra-vars  "server_ip=$(ip r | grep /20 | grep eth0 | awk '{print $9}')"

# apt install pip -y
# python3 -m pip install --user ansible
# apt install software-properties-common -y
# add-apt-repository --yes --update ppa:ansible/ansible
# apt install ansible -y 
# ansible-pull -U https://github.com/hector-medina-nubosas/ansible2.git -C apache-latest sample-app/apache-server.yaml --extra-vars  "server_ip=$(ip r | grep /20 | grep eth0 | awk '{print $9}')"