package data

#cloudflare_certificate_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_certificate_pack")
	close({
		// Identifier.
		certificate_pack_id!: string

		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
