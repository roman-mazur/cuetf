package res

#cloudflare_api_shield_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_api_shield_schema")
	id?:                 string
	kind?:               string
	name:                string
	source:              string
	validation_enabled?: bool
	zone_id:             string
}
