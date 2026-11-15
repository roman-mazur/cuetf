package data

cloudflare_zero_trust_cws_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_deployment")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// IDs of basic-auth credentials attached to this deployment
		basic_auth_credential_ids?: [...string]
		created_at?: string

		// Default traffic decision when no policy set matches
		// Available values: "ALLOW", "BLOCK".
		default_mode?: string

		// ID of the deployment to retrieve
		deployment_id?: string

		// Optional free-form description.
		description?: string

		// ID of the attached domain ACL. Omitted when none.
		domain_acl_id?: string
		filter?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Filter by deployment name (case-insensitive substring match)
			name?: string

			// Field to order results by (default: created_at)
			// Available values: "name", "created_at", "updated_at".
			order?: string
		})

		// ID of the deployment to retrieve
		id?: string

		// Human-readable name; unique per account
		name?: string

		// Action applied when an enforcing policy has a runtime Rego error
		// Available values: "BLOCK", "SKIP".
		on_error_action?: string

		// IDs of policy sets attached to this deployment
		policy_set_ids?: [...string]

		// Whether OPA builtin failures are raised as runtime evaluation errors
		rego_raise_error?: bool

		// Tags attached to this deployment
		tags?: [string]: string
		updated_at?: string
	})
}
