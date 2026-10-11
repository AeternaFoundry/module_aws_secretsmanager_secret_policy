output "secretsmanager_secret_policies_id" {
  description = "Map of id values across all secretsmanager_secret_policies, keyed the same as var.secretsmanager_secret_policies"
  value       = { for k, v in aws_secretsmanager_secret_policy.secretsmanager_secret_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secretsmanager_secret_policies_block_public_policy" {
  description = "Map of block_public_policy values across all secretsmanager_secret_policies, keyed the same as var.secretsmanager_secret_policies"
  value       = { for k, v in aws_secretsmanager_secret_policy.secretsmanager_secret_policies : k => v.block_public_policy if v.block_public_policy != null }
}
output "secretsmanager_secret_policies_policy" {
  description = "Map of policy values across all secretsmanager_secret_policies, keyed the same as var.secretsmanager_secret_policies"
  value       = { for k, v in aws_secretsmanager_secret_policy.secretsmanager_secret_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "secretsmanager_secret_policies_region" {
  description = "Map of region values across all secretsmanager_secret_policies, keyed the same as var.secretsmanager_secret_policies"
  value       = { for k, v in aws_secretsmanager_secret_policy.secretsmanager_secret_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "secretsmanager_secret_policies_secret_arn" {
  description = "Map of secret_arn values across all secretsmanager_secret_policies, keyed the same as var.secretsmanager_secret_policies"
  value       = { for k, v in aws_secretsmanager_secret_policy.secretsmanager_secret_policies : k => v.secret_arn if v.secret_arn != null && length(v.secret_arn) > 0 }
}

