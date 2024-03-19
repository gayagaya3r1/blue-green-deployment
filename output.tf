output "private_ipS" {
    value = aws_instance.conditions[*].private_ip # star is used to print no of indexs means more than one
}