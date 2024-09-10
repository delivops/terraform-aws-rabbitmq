# terraform-aws-rabbitmq

This Terraform module provisions a RabbitMQ message broker on AWS using the AWS MQ service. RabbitMQ is an open-source message broker software that facilitates the exchange of messages between different parts of an application or between different applications. This module sets up a RabbitMQ broker with basic configurations and outputs essential information for integration.

## Installation

To use this module, you need to have Terraform installed. You can find installation instructions on the Terraform website.

## Usage

The module will create a RabbitMQ message broker.
Use this module multiple times to create repositories with different configurations.

Include this repository as a module in your existing terraform code:

```python

provider "aws" {
  region = var.aws_region
  }

################################################################################
# AWS RabbitMQ
################################################################################


module "mq-rabbit-example" {
  source              = "delivops/mq-rabbit/aws"
  # version  = "x.x.x"
  broker_name         = var.broker_name
  engine_version      = "3.12.13"
  instance_type       = var.instance_type
  deployment_mode     = var.deployment_mode
  subnet_ids          = var.subnets_ids
  vpc_id              = var.vpc_id
  username            = xxxx
  password            = xxxxxxxxxxxxx
  allowed_cidr_blocks = var.allowed_cidr_blocks
  tags = var.tags
}


```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_mq_broker.rabbitmq](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/mq_broker) | resource |
| [aws_security_group.mq_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidr_blocks"></a> [allowed\_cidr\_blocks](#input\_allowed\_cidr\_blocks) | List of CIDR blocks allowed to access the RabbitMQ broker | `list(string)` | n/a | yes |
| <a name="input_broker_name"></a> [broker\_name](#input\_broker\_name) | Name of the RabbitMQ broker | `string` | n/a | yes |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Deployment mode of the RabbitMQ broker | `string` | `"SINGLE_INSTANCE"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | RabbitMQ engine version | `string` | `"3.8.11"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | RabbitMQ instance type | `string` | `"mq.t3.micro"` | no |
| <a name="input_password"></a> [password](#input\_password) | Password for RabbitMQ authentication | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the RabbitMQ broker | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the RabbitMQ broker and related resources | `map(string)` | `{}` | no |
| <a name="input_username"></a> [username](#input\_username) | Username for RabbitMQ authentication | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID for the security group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_broker_arn"></a> [broker\_arn](#output\_broker\_arn) | RabbitMQ broker ARN |
| <a name="output_broker_endpoints"></a> [broker\_endpoints](#output\_broker\_endpoints) | RabbitMQ broker endpoints |
| <a name="output_broker_id"></a> [broker\_id](#output\_broker\_id) | RabbitMQ broker ID |
<!-- END_TF_DOCS -->


## License

MIT

