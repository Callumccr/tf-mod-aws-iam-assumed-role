
data "aws_caller_identity" "default" {}

data "aws_iam_policy_document" "default" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = length(var.trusted_arns) != "" ? ["arn:aws:iam::${data.aws_caller_identity.default.account_id}:root"] : var.trusted_arns
    }
    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["${var.require_mfa_auth}"]
    }
  }
}

resource "aws_iam_role" "default" {
  count              = var.enabled ? 1 : 0
  name               = module.label.id
  path               = var.path
  assume_role_policy = data.aws_iam_policy_document.default.json
  tags               = module.label.tags
}

resource "aws_iam_role_policy_attachment" "default" {
  count      = var.enabled ? length(var.aws_policy_arns) : 0
  role       = aws_iam_role.default.name
  policy_arn = var.aws_policy_arns[count.index]
}
