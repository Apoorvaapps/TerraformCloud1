variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 2
}

variable "subnet_prefix" {
  type = "list"
  default = [
    {
      ip      = "10.0.1.0/24"
      name     = "subnet-1"
    },
    {
      ip      = "10.0.2.0/24"
      name     = "subnet-2"
    }
   ]
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