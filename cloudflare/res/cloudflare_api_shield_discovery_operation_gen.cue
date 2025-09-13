package res

#cloudflare_api_shield_discovery_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_discovery_operation")
	close({
		// UUID.
		id?: string

		// UUID.
		operation_id!: string

		// Mark state of operation in API Discovery
		// * `review` - Mark operation as for review
		// * `ignored` - Mark operation as ignored
		// Available values: "review", "ignored".
		state?: string

		// Identifier.
		zone_id!: string
	})
}
