package data

#cloudflare_snippet_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_snippet_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// Use this field to specify the unique ID of the zone.
		zone_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Indicates when the snippet was created.
			created_on?: string

			// Indicates when the snippet was last modified.
			modified_on?: string

			// Identify the snippet.
			snippet_name?: string
		}), [...close({
			// Indicates when the snippet was created.
			created_on?: string

			// Indicates when the snippet was last modified.
			modified_on?: string

			// Identify the snippet.
			snippet_name?: string
		})]])
	})
}
