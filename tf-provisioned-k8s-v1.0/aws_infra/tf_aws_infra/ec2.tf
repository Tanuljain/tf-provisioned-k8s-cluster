provider "aws" {
  region = var.region
}

# terraform {
#   backend "s3" {
#     bucket         = "{{ bucket_name }}"
#     key            = "state/terraform.tfstate"
#     region         = "{{ region }}"
#     dynamodb_table = "{{ dynamodb_table }}"
#     encrypt        = true
#   }
# }

resource "aws_instance" "instance" {
  ami           = var.ami_id
  count         = length(var.instance_name)
  key_name      = var.key_name
  instance_type = var.instance_type
  #availability_zone      = var.availability_zone
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = element(var.instance_name, count.index)
  }
}
