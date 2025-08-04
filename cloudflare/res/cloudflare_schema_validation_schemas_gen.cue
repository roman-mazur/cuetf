package res

#cloudflare_schema_validation_schemas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_schemas")
	close({
		// A unique identifier of this schema
		id?:         string
		created_at?: string

		// The kind of the schema
		// Available values: "openapi_v3".
		kind!: string

		// A human-readable name for the schema
		name!: string

		// A unique identifier of this schema
		schema_id?: string

		// The raw schema, e.g., the OpenAPI schema, either as JSON or
		// YAML
		source!: string

		// An indicator if this schema is enabled
		validation_enabled!: bool

		// Identifier.
		zone_id!: string
	})
}
