variable "capacity_management_occ_availability_catalogs_lookup" {
  description = <<EOT
Map of capacity_management_occ_availability_catalogs_lookup, attributes below
Required:
    - compartment_id
Optional:
    - catalog_state
    - display_name
    - namespace
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    catalog_state  = optional(string)
    display_name   = optional(string)
    namespace      = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

