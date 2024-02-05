variable "cidr_ip_vpc" {
  type = string
  default = "10.0.0.0/16"
}

variable "cidr_ip_subnet" {
  type = string
  default = "10.0.1.0/24"
}
variable "region" {
  type = string
  default = "us-east-1"
  
}