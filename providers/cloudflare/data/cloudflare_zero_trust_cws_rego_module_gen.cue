package data

cloudflare_zero_trust_cws_rego_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_rego_module")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string
		filter?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Filter by Rego module name (case-insensitive substring match)
			name?: string

			// Field to order results by (default: created_at)
			// Available values: "name", "created_at", "updated_at".
			order?: string

			// Filter by package path (case-sensitive literal substring match)
			package_path?: string
		})

		// ID of the Rego module to retrieve
		id?: string

		// Human-readable name; unique per account
		name?: string

		// Dotted path derived from rego_source. Begins with lib. and is unique per account.
		package_path?: string

		// ID of the Rego module to retrieve
		rego_module_id?: string

		// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
		rego_source?: string
		updated_at?:  string
	})
}
