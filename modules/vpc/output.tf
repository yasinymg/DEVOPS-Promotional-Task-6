output "vpc_id" {
  description = "ID of the KCVPC"
  value       = aws_vpc.KCVPC.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the KCVPC"
  value       = aws_vpc.KCVPC.cidr_block
}
