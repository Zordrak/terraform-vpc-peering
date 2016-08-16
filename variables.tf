variable "environment" {
  type        = "string"
  description = "Source VPC environment name"
  default     = "testenv"
}

variable "peer_matrix" {
  type        = "list"
  default     = []
  #   "0123456789012,vpc-01234567890123456,10.99.0.0/16",
  #   "2109876543210,vpc-65432109876543210,172.16.0.0/16"
  # ]
  description = "List of peering partner tuples (['peer_aws_account_id,peer_vpc_id,peer_cidr_block']) with which to create vpc peering connections"
}

variable "project" {
  type        = "string"
  description = "Source VPC project name"
  default     = "testproj"
}

variable "source_vpc_id" {
  type        = "string"
  description = "Source/Owner VPC ID"
  default     = "test_source_vpc_id_value"
}
