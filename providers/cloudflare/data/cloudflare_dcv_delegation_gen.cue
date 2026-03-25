package data

#cloudflare_dcv_delegation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dcv_delegation")
	close({
		// The DCV Delegation unique identifier.
		uuid?: string

		// Identifier.
		zone_id!: string
	})
}
