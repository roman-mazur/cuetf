package res

#cloudflare_api_shield_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_api_shield_schema")
	close({
		created_at?: string

		// Schema file bytes
		file!: string

		// Kind of schema
		// Available values: "openapi_v3".
		kind!: string

		// Name of the schema
		name?:      string
		schema_id?: string

		// Source of the schema
		source?: string

		// Flag whether schema is enabled for validation.
		// Available values: "true", "false".
		validation_enabled?: string

		// Identifier.
		zone_id!: string
		schema?: close({
			created_at?: string

			// Kind of schema
			// Available values: "openapi_v3".
			kind?: string

			// Name of the schema
			name?: string

			// UUID.
			schema_id?: string

			// Source of the schema
			source?: string

			// Flag whether schema is enabled for validation.
			validation_enabled?: bool
		})
		upload_details?: close({
			// Diagnostic warning events that occurred during processing.
			// These events are non-critical errors found within the schema.
			warnings?: matchN(1, [close({
				// Code that identifies the event that occurred.
				code?: number

				// JSONPath location(s) in the schema where these events were
				// encountered. See
				// [https://goessner.net/articles/JsonPath/](https://goessner.net/articles/JsonPath/)
				// for JSONPath specification.
				locations?: [...string]

				// Diagnostic message that describes the event.
				message?: string
			}), [...close({
				// Code that identifies the event that occurred.
				code?: number

				// JSONPath location(s) in the schema where these events were
				// encountered. See
				// [https://goessner.net/articles/JsonPath/](https://goessner.net/articles/JsonPath/)
				// for JSONPath specification.
				locations?: [...string]

				// Diagnostic message that describes the event.
				message?: string
			})]])
		})
	})
}
