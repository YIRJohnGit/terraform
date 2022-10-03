#Security Group Setting
resource "aws_security_group" "testing_sg" {
  name        = "secu_grp_testing"
  description = "Allow Sample"
  tags = {
    Name = "Sample SG"
  }
}
