resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  count         = "${length(var.peer_matrix)}"
  auto_accept   = true
  peer_owner_id = "${element(split(",", element(var.peer_matrix, count.index)), 0)}"
  peer_vpc_id   = "${element(split(",", element(var.peer_matrix, count.index)), 1)}"
  vpc_id        = "${var.source_vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-${element(split(",", element(var.peer_matrix, count.index)), 1)}-PEER"
    Environment = "${var.environment}"
    Project     = "${var.project}"
    Tier        = "PRI"
  }
}
