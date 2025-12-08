package data

#cloudflare_zone_hold: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zone_hold")
	close({
		hold?: bool

		// Identifier.
		id?:         string
		hold_after?: string

		// Identifier.
		zone_id!:            string
		include_subdomains?: string
	})
}
