package data

cloudflare_zero_trust_cws_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_policy")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Optional free-form description.
		description?: string

		// Non-function rule declared in rego_source. Evaluation uses data.<package_path>.<entrypoint>.
		entrypoint?: string

		// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
		filter?: string
		find_one_by?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Filter by policy name (case-insensitive substring match)
			name?: string

			// Field to order results by (default: created_at)
			// Available values: "name", "created_at", "updated_at".
			order?: string

			// Filter by package path (case-sensitive literal substring match)
			package_path?: string

			// Filter to policies attached to (members of) this policy set
			policy_set_id?: string
		})

		// ID of the policy to retrieve
		id?: string

		// Human-readable name; unique per account
		name?: string

		// Dotted path derived from rego_source. Begins with policy. and is unique per account.
		package_path?: string

		// ID of the policy to retrieve
		policy_id?: string

		// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
		rego_source?: string

		// Tags attached to this policy
		tags?: [string]: string
		updated_at?: string
	})
}
