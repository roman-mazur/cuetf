package data

cloudflare_snippet_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_snippet_rules")
	close({
		// Use this field to specify the unique ID of the zone.
		id?: string

		// Use this field to specify the unique ID of the zone.
		zone_id!: string
	})
}
