#!/bin/bash

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common # Ensure that your system is up to date
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor |  sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg #Install the HashiCorp GPG key
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint # Verify the key's fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list # Adding official HashiCorp repository to your system

sudo apt update # Update the system
sudo apt-get install -y terraform # Instaltion Terraform
terraform  --version  # Verify the version
