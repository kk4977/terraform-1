variable "instance_names" {
    type = map
    default =  {
        db = "t3.small"
        backend = "t3.micro"
        Frontend  = "t3.micro"
    }  
}

variable "common_tags"{
    type = map
    default = {
        project = "Expense"
        Terraform = "True"
    }
}

variable "zone_id" {
    default = "Z07413803U46VCY2KI9MO"
    type  = string
  
}
variable "domain_name" {
    default = "sivakumar.cloud"
    type = string
  
}