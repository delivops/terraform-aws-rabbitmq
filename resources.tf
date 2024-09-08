resource "aws_mq_broker" "rabbitmq" {
  broker_name = var.broker_name

  engine_type        = "RabbitMQ"
  engine_version     = var.engine_version
  host_instance_type = var.instance_type

  deployment_mode = var.deployment_mode

  subnet_ids = var.subnet_ids

  security_groups = [aws_security_group.mq_sg.id]

  user {
    username = var.username
    password = var.password
  }

  logs {
    general = true
  }
  encryption_options {
    use_aws_owned_key = false
  }
  tags       = var.tags
  depends_on = [aws_security_group.mq_sg]
}

resource "aws_security_group" "mq_sg" {
  name_prefix = "${var.broker_name}-sg"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5671
    to_port     = 5671
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }
  ingress {
    from_port   = 15671
    to_port     = 15671
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}
