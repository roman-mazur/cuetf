package data

#cloudflare_content_scanning_expressions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_content_scanning_expressions")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// defines the unique ID for this custom scan expression.
			id?: string

			// Defines the ruleset expression to use in matching content
			// objects.
			payload?: string
		}), [...close({
			// defines the unique ID for this custom scan expression.
			id?: string

			// Defines the ruleset expression to use in matching content
			// objects.
			payload?: string
		})]])

		// Defines an identifier.
		zone_id!: string
	})
}
