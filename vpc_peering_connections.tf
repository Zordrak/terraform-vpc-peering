resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  count         = "${length(keys(var.peer_vpcs))}"
  auto_accept   = true
  peer_owner_id = "${element(keys(var.peer_vpcs), count.index)}"
  peer_vpc_id   = "${element(split(",", lookup(var.peer_vpcs, element(keys(var.peer_vpcs), count.index))), 0)}"
  vpc_id        = "${var.source_vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-${element(split(",", lookup(var.peer_vpcs, element(keys(var.peer_vpcs),count.index))), 0)}-PEER"
    Environment = "${var.environment}"
    Project     = "${var.project}"
    Tier        = "PRI"
  }
}
