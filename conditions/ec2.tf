resource "aws_instance" "test-roboshop" {
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [ aws_security_group.allow_all_SG.id ]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all_SG" {
 name = var.sg_name
 description = var.sg_description

 ingress {
 from_port = var.from_port
 to_port = var.to_port
 protocol = var.protocol
 cidr_blocks = var.cidr_blocks
 ipv6_cidr_blocks = ["::/0"]
 }

 egress {
 from_port        = var.from_port
 to_port          = var.to_port
 protocol         = var.protocol
 cidr_blocks      = var.cidr_blocks
 ipv6_cidr_blocks = ["::/0"]
 }
 tags = var.sg_tags
}