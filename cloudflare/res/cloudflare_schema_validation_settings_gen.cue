package res

#cloudflare_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_settings")
	close({
		// The default mitigation action used
		// Mitigation actions are as follows:
		//
		// - `"log"` - log request when request does not conform to schema
		// - `"block"` - deny access to the site when request does not
		// conform to schema
		// - `"none"` - skip running schema validation
		// Available values: "none", "log", "block".
		validation_default_mitigation_action!: string

		// When set, this overrides both zone level and operation level
		// mitigation actions.
		//
		// - `"none"` - skip running schema validation entirely for the
		// request
		// - `null` - clears any existing override
		// Available values: "none".
		validation_override_mitigation_action?: string

		// Identifier.
		zone_id!: string
	})
}
