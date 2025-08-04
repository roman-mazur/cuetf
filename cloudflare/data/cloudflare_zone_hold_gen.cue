package data

#cloudflare_zone_hold: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_hold")
	close({
		hold?:               bool
		hold_after?:         string
		include_subdomains?: string
		zone_id!:            string
	})
}
