package res

#cloudflare_regional_tiered_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_regional_tiered_cache")
	id?:      string
	value!:   string
	zone_id!: string
}
