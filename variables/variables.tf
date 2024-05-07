variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI id"
  
}
variable "instance_type"{
    type = string
    default = "t2.micro"
}
variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Name = "db"
        Module = "db"
    }
  
}
variable "sg_name" {
    default = "allow_ssh"
  
}
variable "sg_description" {
    default = "allowing ssh access"
  
}
variable "ssh_port" {
    default = 22
  
}

variable "protocol" {
    type = string
    default = "tcp"
  
}
variable "allowed_cidr"{
    type = list
    default = ["0.0.0.0/0"]
    }