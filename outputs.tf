output "pipes_pipes_id" {
  description = "Map of id values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pipes_pipes_arn" {
  description = "Map of arn values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "pipes_pipes_description" {
  description = "Map of description values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "pipes_pipes_desired_state" {
  description = "Map of desired_state values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.desired_state if v.desired_state != null && length(v.desired_state) > 0 }
}
output "pipes_pipes_enrichment" {
  description = "Map of enrichment values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.enrichment if v.enrichment != null && length(v.enrichment) > 0 }
}
output "pipes_pipes_enrichment_parameters" {
  description = "Map of enrichment_parameters values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => one(v.enrichment_parameters) if v.enrichment_parameters != null && length(v.enrichment_parameters) > 0 }
}
output "pipes_pipes_kms_key_identifier" {
  description = "Map of kms_key_identifier values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.kms_key_identifier if v.kms_key_identifier != null && length(v.kms_key_identifier) > 0 }
}
output "pipes_pipes_log_configuration" {
  description = "Map of log_configuration values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => one(v.log_configuration) if v.log_configuration != null && length(v.log_configuration) > 0 }
}
output "pipes_pipes_name" {
  description = "Map of name values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pipes_pipes_name_prefix" {
  description = "Map of name_prefix values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "pipes_pipes_region" {
  description = "Map of region values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "pipes_pipes_role_arn" {
  description = "Map of role_arn values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "pipes_pipes_source" {
  description = "Map of source values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.source if v.source != null && length(v.source) > 0 }
}
output "pipes_pipes_source_parameters" {
  description = "Map of source_parameters values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => one(v.source_parameters) if v.source_parameters != null && length(v.source_parameters) > 0 }
}
output "pipes_pipes_tags" {
  description = "Map of tags values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "pipes_pipes_tags_all" {
  description = "Map of tags_all values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "pipes_pipes_target" {
  description = "Map of target values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => v.target if v.target != null && length(v.target) > 0 }
}
output "pipes_pipes_target_parameters" {
  description = "Map of target_parameters values across all pipes_pipes, keyed the same as var.pipes_pipes"
  value       = { for k, v in aws_pipes_pipe.pipes_pipes : k => one(v.target_parameters) if v.target_parameters != null && length(v.target_parameters) > 0 }
}

