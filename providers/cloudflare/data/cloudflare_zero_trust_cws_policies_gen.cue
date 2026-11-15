package data

cloudflare_zero_trust_cws_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_policies")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by policy name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// Filter by package path (case-sensitive literal substring match)
		package_path?: string

		// Filter to policies attached to (members of) this policy set
		policy_set_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Non-function rule declared in rego_source. Evaluation uses data.<package_path>.<entrypoint>.
			entrypoint?: string

			// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
			filter?: string

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?: string

			// Dotted path derived from rego_source. Begins with policy. and is unique per account.
			package_path?: string

			// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
			rego_source?: string

			// Tags attached to this policy
			tags?: [string]: string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Non-function rule declared in rego_source. Evaluation uses data.<package_path>.<entrypoint>.
			entrypoint?: string

			// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
			filter?: string

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?: string

			// Dotted path derived from rego_source. Begins with policy. and is unique per account.
			package_path?: string

			// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
			rego_source?: string

			// Tags attached to this policy
			tags?: [string]: string
			updated_at?: string
		})]])
	})
}
