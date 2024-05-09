resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh access"

    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
        from_port = ingress.value[port]
        to_port = ingress.value[port]
        protocol = ingress.value[protocol]
        cidr_blocks = ingress.value[allowed_cidr]
    }
    }
    egress {
        from_port = 0 # '0' means opening all ports
        to_port = 0   # '0' means opening all ports
        protocol = -1  # '-1' means opening all protocols
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "allow_ports"
        CreatedBy = "Sivakumar"
    }
}