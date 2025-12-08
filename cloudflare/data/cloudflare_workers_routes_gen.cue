package data

#cloudflare_workers_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_routes")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Identifier.
			id?: string

			// Pattern to match incoming requests against. [Learn
			// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
			pattern?: string

			// Name of the script to run if the route matches.
			script?: string
		}), [...close({
			// Identifier.
			id?: string

			// Pattern to match incoming requests against. [Learn
			// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
			pattern?: string

			// Name of the script to run if the route matches.
			script?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
