package res

#cloudflare_api_shield_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_api_shield_operation")
	endpoint: string
	host:     string
	id?:      string
	method:   string
	zone_id:  string
}
