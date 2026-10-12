resource "stripe_billing_portal_configuration" "billing_portal_configurations" {
  for_each = var.billing_portal_configurations

  features           = each.value.features
  active             = each.value.active
  business_profile   = each.value.business_profile
  default_return_url = each.value.default_return_url
  login_page         = each.value.login_page
  metadata           = each.value.metadata
  name               = each.value.name
}

