package res

cloudflare_magic_transit_cf1_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_transit_cf1_site")
	close({
		// Identifier
		account_id!: string
		body!: matchN(1, [close({
			created_on?: string

			// A human-provided description of the CF1 Site.
			description?: string
			location?: close({
				// Latitude of the CF1 Site.
				lat?: number

				// Longitude of the CF1 Site.
				long?: number

				// Name of nearest town, city, or village.
				name?: string
			})

			// Identifier
			id?: string

			// A human-provided name describing the CF1 Site that should be unique within the account.
			name!:        string
			modified_on?: string
		}), [...close({
			created_on?: string

			// A human-provided description of the CF1 Site.
			description?: string
			location?: close({
				// Latitude of the CF1 Site.
				lat?: number

				// Longitude of the CF1 Site.
				long?: number

				// Name of nearest town, city, or village.
				name?: string
			})

			// Identifier
			id?: string

			// A human-provided name describing the CF1 Site that should be unique within the account.
			name!:        string
			modified_on?: string
		})]])
		created_on?: string

		// A human-provided description of the CF1 Site.
		description?: string

		// Identifier
		id?: string
		location?: close({
			// Latitude of the CF1 Site.
			lat?: number

			// Longitude of the CF1 Site.
			long?: number

			// Name of nearest town, city, or village.
			name?: string
		})
		modified_on?: string

		// A human-provided name describing the CF1 Site that should be unique within the account.
		name?: string
	})
}
