package data

cloudflare_zero_trust_cws_rego_modules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_rego_modules")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by Rego module name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// Filter by package path (case-sensitive literal substring match)
		package_path?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?: string

			// Dotted path derived from rego_source. Begins with lib. and is unique per account.
			package_path?: string

			// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
			rego_source?: string
			updated_at?:  string
		}), [...close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?: string

			// Dotted path derived from rego_source. Begins with lib. and is unique per account.
			package_path?: string

			// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
			rego_source?: string
			updated_at?:  string
		})]])
	})
}
