package data

cloudflare_snippet_rules_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_snippet_rules_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Provide an informative description of the rule.
			description?: string

			// Indicate whether to execute the rule.
			enabled?: bool

			// Define the expression that determines which traffic matches the rule.
			expression?: string

			// Specify the unique ID of the rule.
			id?: string

			// Specify the timestamp of when the rule was last modified.
			last_updated?: string

			// Identify the snippet.
			snippet_name?: string
		}), [...close({
			// Provide an informative description of the rule.
			description?: string

			// Indicate whether to execute the rule.
			enabled?: bool

			// Define the expression that determines which traffic matches the rule.
			expression?: string

			// Specify the unique ID of the rule.
			id?: string

			// Specify the timestamp of when the rule was last modified.
			last_updated?: string

			// Identify the snippet.
			snippet_name?: string
		})]])

		// Use this field to specify the unique ID of the zone.
		zone_id!: string
	})
}
