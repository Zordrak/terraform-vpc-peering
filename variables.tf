variable "environment" {
  type        = "string"
  description = "Source VPC environment name"
  default     = "testenv"
}

variable "peer_matrix" {
  type        = "list"
  description = "List of peering partner tuples (['peer_aws_account_id,peer_vpc_id,peer_cidr_block']) with which to create vpc peering connections"
  default     = [
    "0123456789012,vpc-99999999999999999,172.16.0.0/16",
    "0123456789011,vpc-99999999999999998,172.32.0.0/16"
  ]
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
