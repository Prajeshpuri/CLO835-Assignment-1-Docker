# Instance type
variable "instance_type" {
  default = {
    "prod" = "t3.medium"
    "dev"  = "t2.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

variable "ecr_repo" {
  default     = ["app", "mysql"]
  type        = set(string)
  description = "Amazon ECR Repository Names"
}

variable "sg_ports" {
  default     = ["22", "80", "8081", "8082", "8083"]
  type        = list(string)
  description = "Ports that should be open on the host machine"
}


