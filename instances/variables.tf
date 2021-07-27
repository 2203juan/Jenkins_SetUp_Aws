variable "region" {
  default     = "ca-central-1"
  description = "AWS Region"
}

variable "remote_state_bucket" {
  description = "Bucket name for layer 1 remote state"
}

variable "remote_state_key" {
  description = "Key name for layer 1 remote state"
}


variable "key_pair_name" {
  description = "Key Pair Name"
  default = "myEc2KeyPair"
}
variable "ec2_instance_type" {
  description = "EC2-Instance type to launch"
}

variable "ec2_ami" {
  description = "EC2_ami"
  default = "ami-0e28822503eeedddc"
}