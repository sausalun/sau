#!/bin/bash

echo "Updating system packages..."
sudo apt update -y

echo "Installing software-properties-common..."
sudo apt install software-properties-common -y

echo "Adding Ansible PPA repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible..."
sudo apt install ansible -y

echo "Verifying Ansible installation..."
ansible --version

echo "Ansible installation completed successfully!"
