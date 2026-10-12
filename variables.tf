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
}

