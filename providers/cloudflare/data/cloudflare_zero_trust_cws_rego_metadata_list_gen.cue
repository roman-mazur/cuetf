package data

cloudflare_zero_trust_cws_rego_metadata_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_rego_metadata_list")
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

		// Filter by rego metadata name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Server-assigned UUID
			id?:   string
			data?: string

			// Unique Rego import path in the form metadata.<segment>, with one alphanumeric
			// or underscore segment. Reference it as data.<import_path>.
			import_path?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Server-assigned UUID
			id?:   string
			data?: string

			// Unique Rego import path in the form metadata.<segment>, with one alphanumeric
			// or underscore segment. Reference it as data.<import_path>.
			import_path?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		})]])
	})
}
