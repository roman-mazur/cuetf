package data

#cloudflare_zone_cache_variants: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_variants")
	close({
		editable?:    bool
		id?:          string
		modified_on?: string
		value?:       string
		zone_id!:     string
	})
}
