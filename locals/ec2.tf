resource "aws_instance" "db" {
    ami = local.ami_id
    instance_type = local.instance_type


 tags = {
    Name = var.instance_name
 }
}