package res

cloudflare_zero_trust_cws_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_deployment")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// IDs of basic-auth credentials to attach
		basic_auth_credential_ids!: [...string]
		created_at?: string

		// Default traffic mode: ALLOW or BLOCK
		// Available values: "ALLOW", "BLOCK".
		default_mode!: string

		// Optional free-form description.
		description?: string

		// ID of the domain ACL to attach (omit or null for none)
		domain_acl_id?: string

		// Server-assigned UUID
		id?: string

		// Name of the deployment
		name!: string

		// Action for runtime Rego errors. Omit to use BLOCK.
		// Available values: "BLOCK", "SKIP".
		on_error_action?: string

		// IDs of policy sets to attach
		policy_set_ids!: [...string]

		// Whether OPA builtin failures are raised as runtime evaluation errors. Omit to
		// use the default true value.
		rego_raise_error?: bool

		// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
		tags?: [string]: string
		updated_at?: string
	})
}
