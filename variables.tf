variable "environment" {
  type        = "string"
  description = "Source VPC environment name"
  default     = "testenv"
}

variable "peer_vpcs" {
  type        = "map"
  description = "Map of 'aws_account_id => vpc_id,cidr_block' with which to create peering connections and output a map of cidr_blocks to connection ids"
  default     = {
    "0123456789012" = "vpc-99999999999999999,172.16.0.0/16"
  }
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
