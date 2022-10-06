## Setting Up EC2 Instances of Linux Ubuntu and Generation KeyPaid

## L10D01_10.2_run_hello_world_container_on_ec2_instance_putty

```
sudo apt-get update # update the apt package
```

```
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common #install packages to allow the apt to use a repository over HTTPS

```

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - # add Docker’s official GPG key
```

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu    $(lsb_release -cs) stable" #set up a stable repository
```

```
sudo apt-get install -y docker-ce #  install the latest version of Docker CE
```
```
sudo docker run hello-world # verify the Docker engine
```
