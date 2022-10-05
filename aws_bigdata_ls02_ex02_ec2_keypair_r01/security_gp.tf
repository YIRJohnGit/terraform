#Security Group Setting
resource "aws_security_group" "testing_sg" {
  name        = "key_secu_grp_testing"
  description = "Create a Key pair for windows instances"

  # For Inbound
  ingress {
    description      = "TLS from VPC SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
	ipv6_cidr_blocks  = ["::/0"]
  }

  tags = {
    Name = "keypair_sg"
  }
}
