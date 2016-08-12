resource "aws_vpc_peering_connection" "acc1_vpc_peer" {
    provider = "aws.awsacc1"
    peer_owner_id = "${var.acc2_id}"
    peer_vpc_id = "${var.acc2_vpc}"
    vpc_id = "${var.acc1_vpc}"

    auto_accept = true
    tags { 
      Name = "VPC Peering between foo and bar" 
    }
}

resource "aws_vpc_peering_connection" "acc2_vpc_peer" {
    provider = "aws.awsacc2"
    peer_owner_id = "${var.acc1_id}"
    peer_vpc_id = "${var.acc1_vpc}"
    vpc_id = "${var.acc2_vpc}"

    auto_accept = true
    tags { 
      Name = "VPC Peering between foo and bar" 
    }
}
