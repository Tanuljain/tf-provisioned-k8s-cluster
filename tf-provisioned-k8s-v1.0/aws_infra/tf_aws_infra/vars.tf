variable "sg_id" {
  description = "Security Group ID"
  type        = string
}

variable "ami_id" {
  description = "AMI ID of Instance"
  type        = string
}

variable "region" {
  description = "Region name"
  type        = string
}

variable "key_name" {
  description = "Key name"
  type        = string
}

variable "instance_name" {
  description = "Name of Instance"
  type        = list(any)
}

variable "instance_type" {
  description = "Type of Instance"
  type        = string
}

variable "availability_zone" {
  description = "Name of availability_zone"
  type        = string
}
