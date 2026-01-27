variable "enabled" {
  type        = bool
  description = "Enable Inspector"
  default     = true
}

variable "resource_types" {
  type        = list(string)
  description = "Resource types to scan"
  default     = ["EC2", "ECR", "LAMBDA", "LAMBDA_CODE"]
}

variable "account_ids" {
  type        = list(string)
  description = "Account IDs to enable"
  default     = []
}

variable "auto_enable" {
  type        = any
  description = "Auto-enable config (unused placeholder)"
  default     = null
}

variable "ecr_configuration" {
  type        = any
  description = "ECR configuration (placeholder)"
  default     = null
}

variable "lambda_configuration" {
  type        = any
  description = "Lambda configuration (placeholder)"
  default     = null
}

variable "filter_criteria" {
  type        = any
  description = "Filter criteria (placeholder)"
  default     = null
}

variable "kms_key_arn" {
  type        = string
  description = "KMS key ARN"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}
