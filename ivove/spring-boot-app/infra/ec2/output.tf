output "my_public_ip" {
  value = aws_instance.my_EC2_Instance.public_ip
}