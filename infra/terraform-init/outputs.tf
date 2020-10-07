# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "bucket_id" {
  description = "The name of the table."
  value       = module.terraform_init.bucket_id
}

output "table_id" {
  description = "The name of the table."
  value       = module.terraform_init.table_id
}

output "kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = module.terraform_init.kms_key_arn
}

output "kms_key_id" {
  description = "The globally unique identifier for the key."
  value       = module.terraform_init.kms_key_id
}

output "kms_key_alias_arn" {
  description = "The Amazon Resource Name (ARN) of the key alias."
  value       = module.terraform_init.kms_key_alias_arn
}