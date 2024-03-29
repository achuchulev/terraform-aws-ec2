module "random_name" {
  source = "github.com/achuchulev/module-random_pet"
}

resource "aws_key_pair" "my_key" {
  key_name   = "key-${module.random_name.name}"
  public_key = var.public_key
}

resource "aws_instance" "new_ec2" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = aws_key_pair.my_key.id

  tags = {
    #Name = module.random_name.name
    Name = "application"
  }
}
