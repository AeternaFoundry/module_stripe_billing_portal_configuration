output "billing_portal_configurations_id" {
  description = "Map of id values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.id }
}
output "billing_portal_configurations_active" {
  description = "Map of active values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.active }
}
output "billing_portal_configurations_application" {
  description = "Map of application values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.application }
}
output "billing_portal_configurations_business_profile" {
  description = "Map of business_profile values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.business_profile }
}
output "billing_portal_configurations_created" {
  description = "Map of created values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.created }
}
output "billing_portal_configurations_default_return_url" {
  description = "Map of default_return_url values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.default_return_url }
}
output "billing_portal_configurations_features" {
  description = "Map of features values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.features }
}
output "billing_portal_configurations_is_default" {
  description = "Map of is_default values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.is_default }
}
output "billing_portal_configurations_livemode" {
  description = "Map of livemode values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.livemode }
}
output "billing_portal_configurations_login_page" {
  description = "Map of login_page values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.login_page }
}
output "billing_portal_configurations_metadata" {
  description = "Map of metadata values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.metadata }
}
output "billing_portal_configurations_name" {
  description = "Map of name values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.name }
}
output "billing_portal_configurations_object" {
  description = "Map of object values across all billing_portal_configurations, keyed the same as var.billing_portal_configurations"
  value       = { for k, v in stripe_billing_portal_configuration.billing_portal_configurations : k => v.object }
}

