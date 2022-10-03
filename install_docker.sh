!#/bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc # Uninstall old versions Dockers

sudo apt-get update
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release # Update the apt package index and install packages to allow apt to use a repository over HTTPS


 sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg # Add Docker’s official GPG key

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null # set up the repository



sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin # Install Docker Engine with Latest Version

apt-cache madison docker-ce # List the versions available in your repo

VERSION_STRING=5:20.10.18~3-0~ubuntu-focal
echo $VERSION_STRING

sudo apt-get install -y docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-compose-plugin # Install a specific version using the version string

sudo service docker status
sudo service docker start
#sudo docker run hello-world # Verify that Docker Engine is installed correctly

# ===========
# sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin # Uninstall Docker Engine
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
