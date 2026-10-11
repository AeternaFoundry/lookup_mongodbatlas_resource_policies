data "mongodbatlas_resource_policies" "resource_policies_lookup" {
  for_each = var.resource_policies_lookup

  org_id = each.value.org_id
}

