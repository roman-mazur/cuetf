package res

cloudflare_precursor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_precursor")
	close({
		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
