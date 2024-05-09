terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    }
}
backend "s3"{
        bucket = "sivakumar-remote-state"
        key = "dynamic-demo-1"
        region = "us-east-1"
        dynamodb_table = "daws78s-locking"

    }
}