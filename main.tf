resource "google_dialogflow_version" "dialogflow_versions" {
  for_each = var.dialogflow_versions

  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  parent          = each.value.parent

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

