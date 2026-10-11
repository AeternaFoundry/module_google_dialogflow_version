variable "dialogflow_versions" {
  description = <<EOT
Map of dialogflow_versions, attributes below
Optional:
    - deletion_policy
    - description
    - parent
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    description     = optional(string)
    parent          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

