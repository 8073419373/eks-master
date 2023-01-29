variable "aws_access_key" {
  default     = "YOUR_ACCESS_KEY"
  type        = string
}

variable "aws_secret_key" {
  default     = "YOUR_SECRET_KEY"
  type        = string
}

variable "aws_eks_cluster" {
  description = "eksdemocluster"
  default     = "eksdemocluster"
  type        = string
}

variable "region" {
  description = "The aws region. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html"
  type        = string
  default     = "us-east-1"
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 4
}

variable "project" {
  description = "Name to be used on all the resources as identifier. e.g. Project name, Application name"
  # description = "foodapp"
  type = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "172.30.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "foodapp"
    "Environment" = "Development"
    "Owner"       = "Swathi Kunte"
  }
}