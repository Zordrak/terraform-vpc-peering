output "vpc_peering_from_id" {
  value = "${aws_vpc_peering_connection.acc1_vpc_peer.id}"
}
output "vpc_peering_to_id" {
  value = "${aws_vpc_peering_connection.acc2_vpc_peer.id}"
}
output "vpc_peering_status" {
  value = "${aws_vpc_peering_connection.acc2_vpc_peer.accept_status}"
}
