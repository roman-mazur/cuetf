package data

cloudflare_zero_trust_cws_tenant_structures: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_tenant_structures")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Filter by import path (case-sensitive literal substring match)
		import_path?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by tenant structure name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Platform this structure models. Immutable after creation; determines valid
			// node kinds and identifier formats.
			// Available values: "aws", "cloudflare".
			application?: string
			created_at?:  string

			// Server-assigned UUID
			id?: string

			// Optional unique Rego mount path in the form tenant.<application>.<name>. The
			// application segment must match application; omitted when unmounted.
			import_path?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		}), [...close({
			// Platform this structure models. Immutable after creation; determines valid
			// node kinds and identifier formats.
			// Available values: "aws", "cloudflare".
			application?: string
			created_at?:  string

			// Server-assigned UUID
			id?: string

			// Optional unique Rego mount path in the form tenant.<application>.<name>. The
			// application segment must match application; omitted when unmounted.
			import_path?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		})]])
	})
}
