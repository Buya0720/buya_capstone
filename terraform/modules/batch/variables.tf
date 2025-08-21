
variable project {
  description = "The project name for tagging"
  type        = string
}

variable environment {
  description = "The environment for tagging (e.g., dev, staging, prod)"
  type        = string
}

variable private_subnet_ids {
  description = "List of private subnet IDs for the Batch compute environment"
  type        = list(string)
}

variable vpc_id {
  description = "The ID of the VPC in which to create the security group"
  type        = string
}

variable dbt_container_image {
  description = "The Docker image for the dbt container"
  type        = string
}

variable dbt_vcpu {
  description = "CPU units for the dbt container"
  type        = string
}

variable dbt_memory {
  description = "Memory in MiB for the dbt container"
  type        = string
}

variable aws_region {
  description = "The AWS region to deploy resources in"
  type        = string
}