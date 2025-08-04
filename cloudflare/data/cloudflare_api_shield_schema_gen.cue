package data

#cloudflare_api_shield_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_schema")
	close({
		created_at?: string

		// Kind of schema
		// Available values: "openapi_v3".
		kind?: string

		// Name of the schema
		name?: string

		// Omit the source-files of schemas and only retrieve their
		// meta-data.
		omit_source?: bool

		// Source of the schema
		source?:    string
		schema_id!: string

		// Flag whether schema is enabled for validation.
		validation_enabled?: bool

		// Identifier.
		zone_id!: string
	})
}
