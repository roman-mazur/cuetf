package data

#cloudflare_regional_hostnames: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_regional_hostnames")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// When the regional hostname was created
			created_on?: string

			// DNS hostname to be regionalized, must be a subdomain of the
			// zone. Wildcards are supported for one level, e.g
			// `*.example.com`
			hostname?: string

			// DNS hostname to be regionalized, must be a subdomain of the
			// zone. Wildcards are supported for one level, e.g
			// `*.example.com`
			id?: string

			// Identifying key for the region
			region_key?: string

			// Configure which routing method to use for the regional hostname
			routing?: string
		}), [...close({
			// When the regional hostname was created
			created_on?: string

			// DNS hostname to be regionalized, must be a subdomain of the
			// zone. Wildcards are supported for one level, e.g
			// `*.example.com`
			hostname?: string

			// DNS hostname to be regionalized, must be a subdomain of the
			// zone. Wildcards are supported for one level, e.g
			// `*.example.com`
			id?: string

			// Identifying key for the region
			region_key?: string

			// Configure which routing method to use for the regional hostname
			routing?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
