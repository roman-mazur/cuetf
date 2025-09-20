package data

#azurerm_role_management_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_role_management_policy")
	close({
		// The activation rules of the policy
		activation_rules?: [...close({
			approval_stage?: [...close({
				primary_approver?: [...close({
					object_id?: string
					type?:      string
				})]
			})]
			maximum_duration?:                                   string
			require_approval?:                                   bool
			require_justification?:                              bool
			require_multifactor_authentication?:                 bool
			require_ticket_info?:                                bool
			required_conditional_access_authentication_context?: string
		})]

		// The rules for active assignment of the policy
		active_assignment_rules?: [...close({
			expiration_required?:                bool
			expire_after?:                       string
			require_justification?:              bool
			require_multifactor_authentication?: bool
			require_ticket_info?:                bool
		})]

		// The Description of the policy
		description?: string

		// The rules for eligible assignment of the policy
		eligible_assignment_rules?: [...close({
			expiration_required?: bool
			expire_after?:        string
		})]

		// The name of the policy
		name?: string

		// The notification rules of the policy
		notification_rules?: [...close({
			active_assignments?: [...close({
				admin_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				approver_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				assignee_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
			})]
			eligible_activations?: [...close({
				admin_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				approver_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				assignee_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
			})]
			eligible_assignments?: [...close({
				admin_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				approver_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
				assignee_notifications?: [...close({
					additional_recipients?: [...string]
					default_recipients?: bool
					notification_level?: string
				})]
			})]
		})]
		id?:       string
		timeouts?: #timeouts

		// ID of the Azure Role to which this policy is assigned
		role_definition_id!: string

		// The scope of the role to which this policy will apply
		scope!: string
	})

	#timeouts: close({
		read?: string
	})
}
