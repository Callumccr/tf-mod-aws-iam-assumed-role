# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-IAM-ASSUMED-ROLE 
# -----------------------------------------------------------------------------

output "arn" {
  value       = aws_iam_role.default.arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}

output "create_date" {
  value       = aws_iam_role.default.create_date
  description = "The creation date of the IAM role."
}

output "description" {
  value       = aws_iam_role.default.description
  description = "The description of the role."
}

output "id" {
  value       = aws_iam_role.default.id
  description = "The name of the role."
}

output "unique_id" {
  value       = aws_iam_role.default.unique_id
  description = "The stable and unique string identifying the role."
}