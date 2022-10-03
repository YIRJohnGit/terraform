#!/bin/bash

cd
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" # download file to the current directory with the local name awscliv2.zip
unzip -u awscliv2.zip # Extact the File and -u Skip prompt for update
sudo ./aws/install --install-dir /usr/local/aws-cli --bin-dir /usr/local/bin # Specify the Installation Directory and BIN Directory
aws --version # Verify the Instalation Version
