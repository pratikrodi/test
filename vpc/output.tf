output "vpc_id" {
  value       = aws_vpc.myvpc.id
}

output "public_subnet_id" {
  value       = aws_subnet.pubsubnet.id
}

output "private_subnet_id" {
  value       = aws_subnet.pvtsubnet.id
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.myigw.id
}

output "nat_gateway_id" {
  value       = aws_nat_gateway.natgw.id
}
output "route_table_id" {
  value       = aws_default_route_table.myroute.id
}