#INPUT
variable "acc1_access_key" {
  description = "First account access_key"
}
variable "acc2_access_key" {
  description = "Second account access_key"
  default = "${var.acc1_access_key}"
}
variable "acc1_secret_key" {
  description = "First account secret_key"
}
variable "acc2_secret_key" {
  description = "Second account secret_key"
  default = "${var.acc1_secret_key}"
}
variable "acc1_region" {
  description = "Fist account region"
}
variable "acc2_region" {
  description = "Second account region"
  default = "${var.acc1_region}"
}
variable "acc1_id" {
  description = "Fist account ID"
  default = "000000000000"
}
variable "acc2_id" {
  description = "Second account ID"
  default = "${var.acc1_id}"
}

#MAIN

provider "aws" {
  alias = "awsacc1"
  region = "${var.acc1_region}"
  access_key = "${var.acc1_access_key}"
  secret_key = "${var.acc1_secret_key}"
}

provider "aws" {
  alias = "awsacc2"
  region = "${var.acc2_region}"
  access_key = "${var.acc2_access_key}"
  secret_key = "${var.acc2_secret_key}"
}
