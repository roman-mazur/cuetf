package data

#cloudflare_schema_validation_operation_settings_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_schema_validation_operation_settings_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// When set, this applies a mitigation action to this operation
			// which supersedes a global schema validation setting just for
			// this operation
			//
			// - `"log"` - log request when request does not conform to schema
			// for this operation
			// - `"block"` - deny access to the site when request does not
			// conform to schema for this operation
			// - `"none"` - will skip mitigation for this operation
			// Available values: "log", "block", "none".
			mitigation_action?: string

			// UUID.
			operation_id?: string
		}), [...close({
			// When set, this applies a mitigation action to this operation
			// which supersedes a global schema validation setting just for
			// this operation
			//
			// - `"log"` - log request when request does not conform to schema
			// for this operation
			// - `"block"` - deny access to the site when request does not
			// conform to schema for this operation
			// - `"none"` - will skip mitigation for this operation
			// Available values: "log", "block", "none".
			mitigation_action?: string

			// UUID.
			operation_id?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
