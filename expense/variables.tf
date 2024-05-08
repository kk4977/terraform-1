variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI id"
  
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}
 
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        terraform = "true"
    }
  
}
variable "instance_names" {
    type = list
    default = [ "db", "Frontend" , "Backend"]
  
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