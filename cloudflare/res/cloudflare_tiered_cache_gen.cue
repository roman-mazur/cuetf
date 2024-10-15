package res

#cloudflare_tiered_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_tiered_cache")
	cache_type!: string
	id?:         string
	zone_id!:    string
}
