output "broker_id" {
  value       = aws_mq_broker.rabbitmq.id
  description = "RabbitMQ broker ID"
}

output "broker_arn" {
  value       = aws_mq_broker.rabbitmq.arn
  description = "RabbitMQ broker ARN"
}

output "broker_endpoints" {
  value       = aws_mq_broker.rabbitmq.instances[0].endpoints
  description = "RabbitMQ broker endpoints"
}
