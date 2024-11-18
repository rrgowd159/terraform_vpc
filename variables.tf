# VPC Variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "example-vpc"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "Enable or disable DNS support for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable or disable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the VPC and its resources"
  type        = map(string)
  default     = {
    Environment = "Development"
    Project     = "ExampleProject"
  }
}

# Subnet Variables
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# Gateway Variables
variable "internet_gateway_enabled" {
  description = "Enable or disable the Internet Gateway for the VPC"
  type        = bool
  default     = true
}

variable "nat_gateway_enabled" {
  description = "Enable or disable the NAT Gateway for private subnets"
  type        = bool
  default     = true
}

# Additional Variables
variable "elastic_ip_allocation_id" {
  description = "Elastic IP allocation ID for the NAT Gateway (if enabled)"
  type        = string
  default     = ""
}

