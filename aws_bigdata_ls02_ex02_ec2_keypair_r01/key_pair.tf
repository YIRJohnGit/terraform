# RSA Private key of size 4096 bits <.pem>
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# RSA Public Key from the above
resource "aws_key_pair" "deployer-key" {
  key_name   = "deployer-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# Storing private key as pem file in Locally
resource "local_file" "tf-key" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "aws_bd_key.pem"
}
