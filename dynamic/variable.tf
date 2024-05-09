variable "inbound_rules" {
    type = list 
    default = [
        { ports = "80"
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
        },
        { ports = "8080"
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
        },
        { ports = "22"
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
        },
        { ports = "3306"
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
        },

    ]
  
}