variable "resource_policies_lookup" {
  description = <<EOT
Map of resource_policies_lookup, attributes below
Required:
    - org_id
EOT

  type = map(object({
    org_id = string
  }))
}

