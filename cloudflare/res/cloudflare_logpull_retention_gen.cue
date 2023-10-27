package res

#cloudflare_logpull_retention: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_logpull_retention")
	enabled: bool
	id?:     string
	zone_id: string
}
