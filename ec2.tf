resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
     Name = "db"
    }
    
  
}
resource "aws_instance" "frontend" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
     Name = "frontend",
    }
    
  
}
resource "aws_instance" "backend" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
     Name = "backend"
    }
    
  
}
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh access"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0 # '0' means opening all ports
        to_port = 0   # '0' means opening all ports
        protocol = -1  # '-1' means opening all protocols
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = " sivakumar kadali"
    }
}