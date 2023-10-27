package res

#cloudflare_zone_cache_reserve: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zone_cache_reserve")
	enabled: bool
	id?:     string
	zone_id: string
}
