output "dialogflow_versions_id" {
  description = "Map of id values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_versions_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_versions_description" {
  description = "Map of description values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no description are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dialogflow_versions_name" {
  description = "Map of name values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_versions_parent" {
  description = "Map of parent values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_versions_status" {
  description = "Map of status values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no status are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "dialogflow_versions_version_number" {
  description = "Map of version_number values across all dialogflow_versions, keyed the same as var.dialogflow_versions except keys with no version_number are omitted"
  value       = { for k, v in google_dialogflow_version.dialogflow_versions : k => v.version_number if v.version_number != null }
}

