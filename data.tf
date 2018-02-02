data "terraform_remote_state" "sg" {
  backend = "local"

  config {
    path = "../Terraform_VPC_example/SG/terraform.tfstate"
  }
}

data "terraform_remote_state" "subnets" {
  backend = "local"

  config {
    path = "../Terraform_VPC_example/Subnets/terraform.tfstate"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "local"

  config {
    path = "../Terraform_VPC_example/VPC/terraform.tfstate"
  }
}
