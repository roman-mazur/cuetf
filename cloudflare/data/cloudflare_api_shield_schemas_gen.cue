package data

#cloudflare_api_shield_schemas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_api_shield_schemas")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// Kind of schema
			// Available values: "openapi_v3".
			kind?:       string
			created_at?: string

			// Name of the schema
			name?: string

			// UUID.
			schema_id?: string

			// Source of the schema
			source?: string

			// Flag whether schema is enabled for validation.
			validation_enabled?: bool
		}), [...close({
			// Kind of schema
			// Available values: "openapi_v3".
			kind?:       string
			created_at?: string

			// Name of the schema
			name?: string

			// UUID.
			schema_id?: string

			// Source of the schema
			source?: string

			// Flag whether schema is enabled for validation.
			validation_enabled?: bool
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Omit the source-files of schemas and only retrieve their
		// meta-data.
		omit_source?: bool

		// Flag whether schema is enabled for validation.
		validation_enabled?: bool

		// Identifier.
		zone_id!: string
	})
}
