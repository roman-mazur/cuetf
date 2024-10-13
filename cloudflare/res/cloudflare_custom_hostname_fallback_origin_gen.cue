package res

#cloudflare_custom_hostname_fallback_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_custom_hostname_fallback_origin")
	id?:      string
	origin!:  string
	status?:  string
	zone_id!: string
}
