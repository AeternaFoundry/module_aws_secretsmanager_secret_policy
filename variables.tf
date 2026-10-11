variable "secretsmanager_secret_policies" {
  description = <<EOT
Map of secretsmanager_secret_policies, attributes below
Required:
    - policy
    - secret_arn
Optional:
    - block_public_policy
    - region
EOT

  type = map(object({
    policy              = string
    secret_arn          = string
    block_public_policy = optional(bool)
    region              = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

