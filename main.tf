data "aws_caller_identity" "current" {}

resource "aws_inspector2_enabler" "this" {
  account_ids    = length(var.account_ids) > 0 ? var.account_ids : [data.aws_caller_identity.current.account_id]
  resource_types = var.resource_types

  depends_on = []
}
