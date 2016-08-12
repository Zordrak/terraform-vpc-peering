output "vpc_peering_ids" {
  value = ["${aws_vpc_peering_connection.vpc_peering_connection.*.id}"]
}
