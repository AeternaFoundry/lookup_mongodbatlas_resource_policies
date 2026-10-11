output "resource_policies_lookup_org_id" {
  description = "Map of org_id values across all resource_policies_lookup, keyed the same as var.resource_policies_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_resource_policies.resource_policies_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "resource_policies_lookup_resource_policies" {
  description = "Map of resource_policies values across all resource_policies_lookup, keyed the same as var.resource_policies_lookup except keys with no resource_policies are omitted"
  value       = { for k, v in data.mongodbatlas_resource_policies.resource_policies_lookup : k => v.resource_policies if v.resource_policies != null && length(v.resource_policies) > 0 }
}
output "resource_policies_lookup_results" {
  description = "Map of results values across all resource_policies_lookup, keyed the same as var.resource_policies_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_resource_policies.resource_policies_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

