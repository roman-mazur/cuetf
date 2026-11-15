package data

cloudflare_zero_trust_cws_rego_metadata: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_rego_metadata")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string
		data?:       string
		filter?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Filter by import path (case-sensitive literal substring match)
			import_path?: string

			// Filter by rego metadata name (case-insensitive substring match)
			name?: string

			// Field to order results by (default: created_at)
			// Available values: "name", "created_at", "updated_at".
			order?: string
		})

		// ID of the rego metadata document to retrieve
		id?: string

		// Unique Rego import path in the form metadata.<segment>, with one alphanumeric
		// or underscore segment. Reference it as data.<import_path>.
		import_path?: string

		// Human-readable name; unique per account
		name?: string

		// ID of the rego metadata document to retrieve
		rego_metadata_id?: string
		updated_at?:       string
	})
}
