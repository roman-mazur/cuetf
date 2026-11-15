package data

cloudflare_ai_security: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_security")
	close({
		// Whether AI Security for Apps is enabled on the zone.
		enabled?: bool

		// Defines the zone.
		id?: string

		// Defines the zone.
		zone_id!: string
	})
}
