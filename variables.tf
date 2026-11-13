variable "billing_portal_configurations" {
  description = <<EOT
Map of billing_portal_configurations, attributes below
Required:
    - features
Optional:
    - active
    - business_profile
    - default_return_url
    - login_page
    - metadata
    - name
EOT

  type = map(object({
    features = object({
      customer_update = optional(object({
        allowed_updates = optional(list(string))
        enabled         = bool
      }))
      invoice_history = optional(object({
        enabled = bool
      }))
      payment_method_update = optional(object({
        enabled                      = bool
        payment_method_configuration = optional(string)
      }))
      subscription_cancel = optional(object({
        cancellation_reason = optional(object({
          enabled = bool
          options = list(string)
        }))
        enabled            = bool
        mode               = optional(string)
        proration_behavior = optional(string)
      }))
      subscription_update = optional(object({
        billing_cycle_anchor    = optional(string)
        default_allowed_updates = optional(list(string))
        enabled                 = bool
        products = optional(list(object({
          adjustable_quantity = optional(object({
            enabled = bool
            maximum = optional(number)
            minimum = optional(number)
          }))
          prices  = list(string)
          product = string
        })))
        proration_behavior = optional(string)
        schedule_at_period_end = optional(object({
          conditions = optional(list(object({
            type = string
          })))
        }))
        trial_update_behavior = optional(string)
      }))
    })
    active = optional(bool)
    business_profile = optional(object({
      headline             = optional(string)
      privacy_policy_url   = optional(string)
      terms_of_service_url = optional(string)
    }))
    default_return_url = optional(string)
    login_page = optional(object({
      enabled = bool
    }))
    metadata = optional(map(string))
    name     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_cancel == null || (v.features.subscription_cancel.mode == null || (contains(["at_period_end", "immediately"], v.features.subscription_cancel.mode)))
      )
    ])
    error_message = "must be one of: \"at_period_end\", \"immediately\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_cancel == null || (v.features.subscription_cancel.proration_behavior == null || (contains(["always_invoice", "create_prorations", "none"], v.features.subscription_cancel.proration_behavior)))
      )
    ])
    error_message = "must be one of: \"always_invoice\", \"create_prorations\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_update == null || (v.features.subscription_update.billing_cycle_anchor == null || (contains(["now", "unchanged"], v.features.subscription_update.billing_cycle_anchor)))
      )
    ])
    error_message = "must be one of: \"now\", \"unchanged\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_update == null || (v.features.subscription_update.proration_behavior == null || (contains(["always_invoice", "create_prorations", "none"], v.features.subscription_update.proration_behavior)))
      )
    ])
    error_message = "must be one of: \"always_invoice\", \"create_prorations\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_update == null || (v.features.subscription_update.schedule_at_period_end == null || (v.features.subscription_update.schedule_at_period_end.conditions == null || alltrue([for item in v.features.subscription_update.schedule_at_period_end.conditions : (contains(["decreasing_item_amount", "shortening_interval"], item.type))])))
      )
    ])
    error_message = "must be one of: \"decreasing_item_amount\", \"shortening_interval\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_portal_configurations : (
        v.features.subscription_update == null || (v.features.subscription_update.trial_update_behavior == null || (contains(["continue_trial", "end_trial"], v.features.subscription_update.trial_update_behavior)))
      )
    ])
    error_message = "must be one of: \"continue_trial\", \"end_trial\""
  }
}

