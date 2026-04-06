package data

#cloudflare_authenticated_origin_pulls_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_authenticated_origin_pulls_settings")
	close({
		// Indicates whether zone-level authenticated origin pulls is
		// enabled.
		enabled?: bool

		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
