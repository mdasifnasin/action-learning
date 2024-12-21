#!/bin/bash

# Update and install required packages.
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Python (latest stable version)
sudo apt-get install -y python3 python3-pip

# Install Terraform (latest version)
# Add HashiCorp's GPG key and official HashiCorp Linux repository
sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
sudo apt-add-repository "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update -y
sudo apt-get install -y terraform

# Install Node.js and npm (latest LTS version)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install cowsay
sudo apt-get install -y cowsay

# Create user 'asif' with password 'asif'
sudo useradd -m asif
echo "asif:asif" | sudo chpasswd

# Use cowsay to print Asif as a dragon
cowsay -f dragon "Asif"

# Success message
echo "Installation complete and user 'asif' created."
