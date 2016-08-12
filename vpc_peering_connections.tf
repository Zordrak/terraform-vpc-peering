resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  count         = "${length(keys(var.peer_vpcs))}"
  auto_accept   = true
  peer_owner_id = "${var.source_aws_account_id}"
  peer_vpc_id   = "${lookup(var.peer_vpcs, element(keys(var.peer_vpcs), count.index))}"
  vpc_id        = "${var.source_vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-${lookup(var.peer_vpcs, element(keys(var.peer_vpcs),count.index))}-PEER"
    Environment = "${var.environment}"
    Project     = "${var.project}"
    Tier        = "PRI"
  }
}
