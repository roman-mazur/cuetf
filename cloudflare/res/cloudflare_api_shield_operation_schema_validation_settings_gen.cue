package res

#cloudflare_api_shield_operation_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_api_shield_operation_schema_validation_settings")
	close({
		// UUID.
		id?: string

		// When set, this applies a mitigation action to this operation
		//
		// - `log` log request when request does not conform to schema for
		// this operation
		// - `block` deny access to the site when request does not conform
		// to schema for this operation
		// - `none` will skip mitigation for this operation
		// - `null` indicates that no operation level mitigation is in
		// place, see Zone Level Schema Validation Settings for
		// mitigation action that will be applied
		// Available values: "log", "block", "none".
		mitigation_action?: string

		// UUID.
		operation_id!: string

		// Identifier.
		zone_id!: string
	})
}
