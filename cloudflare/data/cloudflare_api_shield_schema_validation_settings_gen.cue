package data

#cloudflare_api_shield_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_schema_validation_settings")
	close({
		// The default mitigation action used when there is no mitigation
		// action defined on the operation
		//
		// Mitigation actions are as follows:
		//
		// * `log` - log request when request does not conform to schema
		// * `block` - deny access to the site when request does not
		// conform to schema
		//
		// A special value of of `none` will skip running schema
		// validation entirely for the request when there is no
		// mitigation action defined on the operation
		// Available values: "none", "log", "block".
		validation_default_mitigation_action?: string

		// When set, this overrides both zone level and operation level
		// mitigation actions.
		//
		// - `none` will skip running schema validation entirely for the
		// request
		// - `null` indicates that no override is in place
		// Available values: "none".
		validation_override_mitigation_action?: string

		// Identifier.
		zone_id!: string
	})
}
