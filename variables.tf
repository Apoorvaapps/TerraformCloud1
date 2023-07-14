variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 2
}

variable "subnet_prefix" {
  type = map(any)
  default = {
    subnet-1 = {
      ip                 = ["10.0.1.0/24"]
      service_delegation = true
      name               = "subnet-1"
    } 
    subnet-2 = {
      ip                 = ["10.0.2.0/24"]
      service_delegation = false
      name               = "subnet-2"
    }
   }
}

variable "admin_username" {
  type        = string
  description = "The administrator username of the SQL logical server."
  default     = "adminTerraform"
}

variable "admin_password" {
  type        = string
  description = "The administrator password of the SQL logical server."
  sensitive   = true
  default     = "password@874532"
}