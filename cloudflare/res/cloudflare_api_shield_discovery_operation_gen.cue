package res

#cloudflare_api_shield_discovery_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_discovery_operation")
	close({
		id?:           string
		operation_id!: string
		state?:        string
		zone_id!:      string
	})
}
