package data

#cloudflare_schema_validation_schemas_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_schemas_list")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// A unique identifier of this schema
			id?: string

			// The kind of the schema
			// Available values: "openapi_v3".
			kind?: string

			// A human-readable name for the schema
			name?: string

			// A unique identifier of this schema
			schema_id?: string

			// The raw schema, e.g., the OpenAPI schema, either as JSON or
			// YAML
			source?: string

			// An indicator if this schema is enabled
			validation_enabled?: bool
		}), [...close({
			created_at?: string

			// A unique identifier of this schema
			id?: string

			// The kind of the schema
			// Available values: "openapi_v3".
			kind?: string

			// A human-readable name for the schema
			name?: string

			// A unique identifier of this schema
			schema_id?: string

			// The raw schema, e.g., the OpenAPI schema, either as JSON or
			// YAML
			source?: string

			// An indicator if this schema is enabled
			validation_enabled?: bool
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Omit the source-files of schemas and only retrieve their
		// meta-data.
		omit_source?: bool

		// Filter for enabled schemas
		validation_enabled?: bool

		// Identifier.
		zone_id!: string
	})
}
