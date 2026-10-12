output "billing_portal_configurations_id" {
  description = "Map of id values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no id are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_portal_configurations_active" {
  description = "Map of active values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no active are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.active if v.active != null }
}
output "billing_portal_configurations_application" {
  description = "Map of application values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no application are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.application if v.application != null && length(v.application) > 0 }
}
output "billing_portal_configurations_business_profile" {
  description = "Map of business_profile values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no business_profile are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.business_profile if v.business_profile != null && length(v.business_profile) > 0 }
}
output "billing_portal_configurations_created" {
  description = "Map of created values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no created are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.created if v.created != null }
}
output "billing_portal_configurations_default_return_url" {
  description = "Map of default_return_url values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no default_return_url are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.default_return_url if v.default_return_url != null && length(v.default_return_url) > 0 }
}
output "billing_portal_configurations_features" {
  description = "Map of features values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no features are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.features if v.features != null && length(v.features) > 0 }
}
output "billing_portal_configurations_is_default" {
  description = "Map of is_default values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no is_default are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.is_default if v.is_default != null }
}
output "billing_portal_configurations_livemode" {
  description = "Map of livemode values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no livemode are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.livemode if v.livemode != null }
}
output "billing_portal_configurations_login_page" {
  description = "Map of login_page values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no login_page are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.login_page if v.login_page != null && length(v.login_page) > 0 }
}
output "billing_portal_configurations_metadata" {
  description = "Map of metadata values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no metadata are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "billing_portal_configurations_name" {
  description = "Map of name values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no name are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "billing_portal_configurations_object" {
  description = "Map of object values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations except keys with no object are omitted"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.object if v.object != null && length(v.object) > 0 }
}

