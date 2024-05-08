variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI id"
  
}
variable "instance_type"{
    type = string
    default = "t3.micro"
}
variable "instance_name" {
    type = string
    default = "backend"
  
}
