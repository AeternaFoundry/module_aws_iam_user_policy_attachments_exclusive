output "iam_user_policy_attachments_exclusives_policy_arns" {
  description = "Map of policy_arns values across all iam_user_policy_attachments_exclusives, keyed the same as var.iam_user_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_user_policy_attachments_exclusive.iam_user_policy_attachments_exclusives : k => v.policy_arns if v.policy_arns != null && length(v.policy_arns) > 0 }
}
output "iam_user_policy_attachments_exclusives_user_name" {
  description = "Map of user_name values across all iam_user_policy_attachments_exclusives, keyed the same as var.iam_user_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_user_policy_attachments_exclusive.iam_user_policy_attachments_exclusives : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

