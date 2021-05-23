output "public-instance-id" {
  value       = aws_instance.public.id
  description = "The public instance ID."
}

output "private-instance-id" {
  value       = aws_instance.private.id
  description = "The private instance ID."
}

output "public-instance-pubip" {
  value       = aws_instance.public.public_ip
  description = "public IP of public instance."
}

output "private-instance-privip" {
  value       = aws_instance.private.private_ip
  description = "Private IP of private instance."
}