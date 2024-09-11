provider "aws" {
  region = "us-east-1"
}

variable "security_groups" {
  description = "List of security group names"
  type        = list(string)
  default     = ["web-sg", "db-sg", "cache-sg"]
}

resource "aws_security_group" "example" {
  for_each = toset(var.security_groups) 
  name     = each.value                 
  description = "Security group for ${each.value}"

  # Add an egress rule to allow all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "security_group_ids" {
  description = "The IDs of the created security groups"
  value       = { for key, sg in aws_security_group.example : key => sg.id }
}

