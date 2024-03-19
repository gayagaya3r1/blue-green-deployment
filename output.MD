output "private_ip" {
    value = aws_instance.conditions[count.index].private_ip
}