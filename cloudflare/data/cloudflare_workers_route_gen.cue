package data

#cloudflare_workers_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_route")
	close({
		// Identifier.
		id?: string

		// Pattern to match incoming requests against. [Learn
		// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
		pattern?: string

		// Identifier.
		route_id?: string

		// Name of the script to run if the route matches.
		script?: string

		// Identifier.
		zone_id!: string
	})
}
