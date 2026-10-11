data "oci_capacity_management_occ_availability_catalogs" "capacity_management_occ_availability_catalogs_lookup" {
  for_each = var.capacity_management_occ_availability_catalogs_lookup

  compartment_id = each.value.compartment_id
  catalog_state  = each.value.catalog_state
  display_name   = each.value.display_name
  namespace      = each.value.namespace

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

