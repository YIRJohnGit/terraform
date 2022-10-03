#!/bin/bash

sudo yum -y update 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install -y python3
sudo yum install -y jenkins java-1.8.0-openjdk-devel
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins


