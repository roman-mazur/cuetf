package res

cloudflare_zero_trust_casb_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_casb_policy")
	close({
		account_id!: string

		// Actions to execute when this policy is triggered, grouped by action type.
		// A policy must contain at least one action across all groups and may include
		// at most one remediation.
		actions!: close({
			// Remediation actions to execute (at most one).
			remediation_types?: matchN(1, [close({
				// The ID of the remediation type to execute.
				remediation_type_id!: string
			}), [...close({
				// The ID of the remediation type to execute.
				remediation_type_id!: string
			})]])

			// Webhook actions to execute.
			webhook_configs?: matchN(1, [close({
				// The ID of the webhook configuration to use.
				webhook_config_id!: string
			}), [...close({
				// The ID of the webhook configuration to use.
				webhook_config_id!: string
			})]])
		})

		// When true, the policy applies to all integrations for the account. When
		// false, integration_ids must be provided.
		applies_to_all_integrations!: bool

		// Timestamp when the policy was created.
		created_at?: string

		// Optional description of what this policy does.
		description?: string

		// Timestamp when the policy was disabled. Omitted from the response when the policy
		// is enabled.
		disabled_at?: string

		// Display name for the policy configuration.
		display_name!: string

		// Boolean specifying if the policy is enabled or disabled.
		enabled!: bool

		// The finding type this policy is associated with. All remediation actions must
		// match this finding type.
		finding_type_id!: string

		// Unique identifier for the policy configuration.
		id?: string

		// The integrations this policy applies to. Required when applies_to_all_integrations is false.
		integration_ids?: [...string]

		// Timestamp of the most recent successful policy invocation. Omitted
		// from the response when the policy has never been successfully
		// triggered. Only populated on GET responses; absent on responses from
		// create/update endpoints.
		last_triggered_at?: string

		// Timestamp when the policy was last updated.
		updated_at?: string
	})
}
