variable "environment" {
  type        = "string"
  description = "Source VPC environment name"
}

variable "peer_vpcs" {
  type        = "map"
  description = "Map of 'aws_account_id=>vpc_ids' with which to create peering connections"
  default     = {}
}

variable "project" {
  type        = "string"
  description = "Source VPC project name"
}

variable "source_aws_account_id" {
  type        = "string"
  description = "Source AWS AccountID"
}

variable "source_vpc_id" {
  type        = "string"
  description = "Source/Owner VPC ID"
}
