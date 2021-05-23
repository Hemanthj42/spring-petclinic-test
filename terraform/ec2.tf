
resource "aws_instance" "public" {
  ami           = var.AMIS
  instance_type = "t2.medium"
  subnet_id = module.vpctest.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  key_name = aws_key_pair.mykeypair.key_name

  user_data = file("installswpublic.sh")
    
  tags = {
  Name = "public-1"
  }
}


resource "aws_instance" "private" {
  ami           = var.AMIS
  instance_type = "t2.micro"
  subnet_id = module.vpctest.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  key_name = aws_key_pair.mykeypair.key_name

  user_data = file("swprivate.sh")

  tags = {
  Name = "private-1"
  }

}