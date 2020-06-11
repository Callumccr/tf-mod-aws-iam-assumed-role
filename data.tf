
data "aws_caller_identity" "default" {}

data "aws_iam_policy_document" "default" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = length(var.trusted_arns) != [] ? var.trusted_arns : ["arn:aws:iam::${data.aws_caller_identity.default.account_id}:root"]
    }
    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["${var.require_mfa_auth}"]
    }
  }
}
