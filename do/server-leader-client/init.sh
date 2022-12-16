#!/bin/bash
# Update repository.
apt update -y
# Download and install pip.
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
# Install ansible with pip.
python3 -m pip install ansible