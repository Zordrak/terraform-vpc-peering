resource "aws_vpc_peering_connection" "acc1_vpc_peer" {
    peer_owner_id = "${aws_account_2_id}"
    peer_vpc_id = "${aws_account_2_vpc}"
    vpc_id = "${aws_account_1_vpc}"

    tags { 
      Name = "VPC Peering between ${aws_account_1_id}.${aws_account_1_vpc} and ${aws_account_2_id}.${aws_account_2_vpc}"

    }
}

resource "aws_vpc_peering_connection" "acc2_vpc_peer" {
    peer_owner_id = "${aws_account_1_id}"
    peer_vpc_id = "${aws_account_1_vpc}"
    vpc_id = "${aws_account_2_vpc}"

    auto_accept = true
    tags { 
      Name = "VPC Peering between ${aws_account_2_id}.${aws_account_2_vpc} and ${aws_account_1_id}.${aws_account_1_vpc}" 
    }
}
