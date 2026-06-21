package data

#cloudflare_magic_transit_cf1_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_magic_transit_cf1_sites")
	close({
		// Identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_on?: string

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
		}), [...close({
			created_on?: string

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
		})]])
	})
}
