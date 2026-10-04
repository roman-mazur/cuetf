package data

cloudflare_zero_trust_casb_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_policy")
	close({
		account_id!: string

		// The actions configured for this policy.
		actions?: close({
			// List of remediation types that will be executed.
			remediation_types?: matchN(1, [close({
				// Display name/label of the remediation type.
				display_name?: string

				// The system name of the remediation type.
				remediation_type?: string

				// Unique identifier for the remediation type.
				remediation_type_id?: string
			}), [...close({
				// Display name/label of the remediation type.
				display_name?: string

				// The system name of the remediation type.
				remediation_type?: string

				// Unique identifier for the remediation type.
				remediation_type_id?: string
			})]])

			// List of webhook configurations that will be triggered.
			webhook_configs?: matchN(1, [close({
				// Display name/label of the webhook configuration.
				display_name?: string

				// Unique identifier for the webhook configuration.
				webhook_config_id?: string
			}), [...close({
				// Display name/label of the webhook configuration.
				display_name?: string

				// Unique identifier for the webhook configuration.
				webhook_config_id?: string
			})]])
		})

		// When true, the policy applies to all integrations for the account. When
		// false, it applies only to the specified integration_ids.
		applies_to_all_integrations?: bool

		// Timestamp when the policy was created.
		created_at?: string

		// User-set description of what this policy does. Limited to 1000 characters.
		description?: string

		// Timestamp when the policy was disabled. Omitted from the response when the policy
		// is enabled.
		disabled_at?: string

		// Display name for the policy configuration. Limited to 255 characters.
		display_name?: string

		// Whether the policy is enabled. Derived from disabled_at (enabled when disabled_at is unset).
		enabled?: bool

		// The finding type this policy is associated with. Immutable after creation;
		// changing it replaces the policy.
		finding_type_id?: string
		id?:              string

		// The integrations this policy applies to.
		integration_ids?: [...string]

		// Timestamp of the most recent successful policy invocation. Omitted
		// from the response when the policy has never been successfully
		// triggered. Only populated on GET responses; absent on responses from
		// create/update endpoints.
		last_triggered_at?: string
		policy_id!:         string

		// Timestamp when the policy was last updated.
		updated_at?: string
	})
}
