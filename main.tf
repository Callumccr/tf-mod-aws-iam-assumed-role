resource "aws_iam_role" "default" {
  count              = var.enabled ? 1 : 0
  name               = module.label.id
  path               = var.path
  assume_role_policy = data.aws_iam_policy_document.default.json
  tags               = module.label.tags
}

resource "aws_iam_role_policy_attachment" "default" {
  count      = var.enabled ? length(var.aws_policy_arns) : 0
  role       = aws_iam_role.default.0.name
  policy_arn = var.aws_policy_arns[count.index]
}
