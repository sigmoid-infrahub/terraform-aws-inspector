# Module: Inspector

This module enables and configures Amazon Inspector v2 for continuous vulnerability scanning of AWS resources.

## Features
- Enable Inspector for the current account and specified member accounts
- Define resource types to scan (EC2, ECR, LAMBDA, LAMBDA_CODE)
- Support for KMS encryption of Inspector data
- Tagging support

## Usage
```hcl
module "inspector" {
  source = "../../terraform-modules/terraform-aws-inspector"

  enabled        = true
  resource_types = ["EC2", "ECR"]
}
```

## Inputs
| Name | Type | Default | Description |
|------|------|---------|-------------|
| `enabled` | `bool` | `true` | Enable Inspector |
| `resource_types` | `list(string)` | `["EC2", "ECR", "LAMBDA", "LAMBDA_CODE"]` | Resource types to scan |
| `account_ids` | `list(string)` | `[]` | Account IDs to enable |
| `auto_enable` | `any` | `null` | Auto-enable config (unused placeholder) |
| `ecr_configuration` | `any` | `null` | ECR configuration (placeholder) |
| `lambda_configuration` | `any` | `null` | Lambda configuration (placeholder) |
| `filter_criteria` | `any` | `null` | Filter criteria (placeholder) |
| `kms_key_arn` | `string` | `null` | KMS key ARN |
| `tags` | `map(string)` | `{}` | Tags to apply |

## Outputs
| Name | Description |
|------|-------------|
| `inspector_enabler_id` | Inspector enabler ID |
| `module` | Full module outputs |

## Environment Variables
None

## Notes
- Enabling Inspector for multiple accounts requires the current account to be the Inspector delegated administrator.
- Resource types must be valid strings supported by `aws_inspector2_enabler`.
