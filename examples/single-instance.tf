provider "aws" {
  region = "eu-west-1"
  }

module "mq-rabbit-example" {
  source              = "delivops/mq-rabbit/aws"
  version  = "0.0.7"
  broker_name         = "my broker name"
  engine_version      = "3.12.13"
  instance_type       = "mq.t3.micro"
  deployment_mode     = "SINGLE_INSTANCE"
  subnet_ids          = ["subnet-0bb1c79de3EXAMPLE2"]
vpc_id              = "vpc-0bb1c79de3EXAMPLE"
username            = "admin"
password            = "superSecurePassword123"
allowed_cidr_blocks = ["10.0.0.0/16"]
  tags = "mqrabbit"
}
