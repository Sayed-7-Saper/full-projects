variable "ami-name-id" {
  type = string
  default = "ami-0d5d9d301c853a04a"
  
}
variable "instance-type" {
  type = string
  default = "t2.micro"
  
}
variable "key_name" {
  type = string                 
  default = "../fortesting.pem"
  
}

variable "region" {
  type = string
  default = "us-east-1"
  
}