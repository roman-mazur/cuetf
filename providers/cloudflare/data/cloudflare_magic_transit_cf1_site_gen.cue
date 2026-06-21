package data

#cloudflare_magic_transit_cf1_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_magic_transit_cf1_site")
	close({
		// Identifier
		account_id!: string

		// Identifier
		cf1_site_id!: string
		created_on?:  string

		// A human-provided description of the CF1 Site.
		description?: string

		// Identifier
		id?:          string
		modified_on?: string

		// A human-provided name describing the CF1 Site that should be
		// unique within the account.
		name?: string
		location?: close({
			// Latitude of the CF1 Site.
			lat?: number

			// Longitude of the CF1 Site.
			long?: number

			// Name of nearest town, city, or village.
			name?: string
		})
	})
}
