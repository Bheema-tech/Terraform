variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    description = "amazon aws Ubuntu version"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instances" {
    /* default = {
        mongodb = "t3.micro"
        redis   = "t3.micro"
        rabbitmq = "t3.small"
        mysql    = "t3.micro"
    } */
    default = [ "mongodb","redis","rabbitmq","mysql" ]
}

variable "zone_id" {
    default = "Z02976963I2HUD4KNAX02"
  
}

variable "domain_name" {
   default = "bheemadevops.fun"
}

variable "environment" {
    default = "dev"
  
}

variable "ec2_tags" {
    type = map(string)
  default = {
    Name = "test-roboshop"
  }
}

variable "sg_name" {
    default = "allow_all_SG"
  
}

variable "sg_description" {
    default = "Allowing traffic for all ports"
  
}

variable "from_port" {
    type = number
    default = 0
  
}

variable "to_port" {
    type = number
    default = 0
  
}

variable "protocol" {
    default = "-1"
  
}

variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}

variable "sg_tags" {
    default = {
        Name = "allow_all_SG"
        purpose = "project"
    }
  
}