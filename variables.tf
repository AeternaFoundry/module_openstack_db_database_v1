variable "db_database_v1s" {
  description = <<EOT
Map of db_database_v1s, attributes below
Required:
    - instance_id
    - name
Optional:
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance_id = string
    name        = string
    region      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

