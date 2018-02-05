
resource "aws_instance" "web" {
  ami             = "ami-c87053b2"
  instance_type   = "t1.micro"
  subnet_id       = "subnet-8499a7cf"
//   ${data.terraform_remote_state.subnets.public_subnet}"
  key_name        = "TFE_TEST"
  security_groups = ["sg-56f93221"]

//    ${data.terraform_remote_state.sg.sg_id}"]

  tags {
    Name         = "Terraform Test"
    ContactOwner = "lcorbo"
    Note         = "Used for example test, can be destroyed with no impact to ongoing project."
  }
}
