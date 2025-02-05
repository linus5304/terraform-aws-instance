variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to launch."
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "The subnet to launch the instance in."

  validation {
    condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id)) == 1
    error_message = "The subnet_id must match the pattern ^subnet-[\\d|\\w]+$"
  }
}
