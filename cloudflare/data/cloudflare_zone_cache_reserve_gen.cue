package data

#cloudflare_zone_cache_reserve: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_reserve")
	enabled?: bool
	id?:      string
	zone_id!: string
}
