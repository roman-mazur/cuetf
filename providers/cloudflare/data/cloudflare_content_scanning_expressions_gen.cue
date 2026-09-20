package data

cloudflare_content_scanning_expressions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_content_scanning_expressions")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Defines the unique ID for this Content Scanning custom expression.
			id?: string

			// Defines the custom content extraction expression used to reach content objects in the request.
			payload?: string
		}), [...close({
			// Defines the unique ID for this Content Scanning custom expression.
			id?: string

			// Defines the custom content extraction expression used to reach content objects in the request.
			payload?: string
		})]])

		// Defines an identifier.
		zone_id?: string
	})
}
